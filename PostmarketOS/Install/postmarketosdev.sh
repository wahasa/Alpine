#!/data/data/com.termux/files/usr/bin/bash
pkg install root-repo x11-repo
pkg install proot xz-utils neofetch pulseaudio -y
termux-setup-storage
alpine=edge
build=20240923
folder=postmarketos-fs
tarball="postmarketos-rootfs.tar.gz"
mkdir -p $folder $folder/binds
[ -f $tarball ] && check=1
if [ "$check" -eq "1" ] > /dev/null 2>&1; then
	echo "Please Waiting,."
	if [ -x "$(command -v neofetch)" ]; then
		neofetch --ascii_distro PostmarketOS -L
	fi
	pv $tarball | proot --link2symlink tar -zxf - -C $folder || :
else
	case `dpkg --print-architecture` in
	aarch64)
		archurl="aarch64" ;;
	arm*)
		archurl="armhf" ;;
	i386)
		archurl="x86" ;;
	x86_64)
		archurl="x86_64" ;;
	*)
		echo "Unknown Architecture"; exit 1 ;;
	esac
	url=https://dl-cdn.alpinelinux.org/alpine/${alpine}/releases/${archurl}/alpine-minirootfs-${build}-${archurl}.tar.gz
	echo "Downloading and Extracting Rootfs,."
	echo ""
	if [ -x "$(command -v neofetch)" ]; then
		neofetch --ascii_distro PostmarketOS -L
	fi
	wget -qO- --tries=0 $url --show-progress --progress=bar:force:noscroll |proot --link2symlink tar -zxf - -C $folder --exclude='dev' || :
fi
bin=.postmarketos
linux=postmarketos
if [ -d $folder/var ];then
	echo ""
	echo "Writing launch script"
	cat > $bin <<- EOM
	#!/data/data/com.termux/files/usr/bin/bash
pulseaudio --start \
    --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" \
    --exit-idle-time=-1
	cd \$(dirname \$0)
	## Unset LD_PRELOAD in case termux-exec is installed
	unset LD_PRELOAD
	command="proot"
	command+=" --kill-on-exit"
	command+=" --link2symlink"
	command+=" -0"
	command+=" -r $folder"
	if [ -n "\$(ls -A $folder/binds)" ]; then
    		for f in $folder/binds/* ;do
      		. \$f
    	done
	fi
	command+=" -b /dev"
	command+=" -b /dev/null:/proc/sys/kernel/cap_last_cap"
	command+=" -b /proc"
	command+=" -b /data/data/com.termux/files/usr/tmp:/tmp"
	command+=" -b $folder/root:/dev/shm"
	## Uncomment the following line to have access to the home directory of termux
	#command+=" -b /data/data/com.termux/files/home:/root"
	## Uncomment the following line to mount /sdcard directly to /
	command+=" -b /sdcard"
	command+=" -w /root"
	command+=" /usr/bin/env -i"
	command+=" HOME=/root"
	command+=" PATH=/bin:/usr/bin:/sbin:/usr/sbin"
	command+=" TERM=\$TERM"
	command+=" LANG=en_US.UTF-8"
	command+=" LC_ALL=C"
	command+=" LANGUAGE=en_US"
	command+=" /bin/sh --login"
	com="\$@"
	if [ -z "\$1" ];then
    		exec \$command
	else
    		\$command -c "\$com"
	fi
	EOM

	if test -f "$bin"; then
  	echo "Fixing shebang of $linux"
		termux-fix-shebang $bin
	fi

	FD=$folder
	if [ -d "$FD" ]; then
	echo "Making $linux executable"
		chmod +x $bin
	fi

	UFD=$folder/binds
	if [ -d "$UFD" ]; then
	echo "Removing image for some space"
		#rm $tarball
	fi

	echo ""
	echo "" > $folder/etc/fstab
	echo "alpine" > ~/"$folder"/etc/hostname
   	echo "127.0.0.1 localhost" > ~/"$folder"/etc/hosts
	echo "nameserver 8.8.8.8" > ~/"$folder"/etc/resolv.conf
        echo "#Alpine Development
https://mirror.postmarketos.org/postmarketos/master
https://dl-cdn.alpinelinux.org/alpine/edge/main
https://dl-cdn.alpinelinux.org/alpine/edge/testing
https://dl-cdn.alpinelinux.org/alpine/edge/community" > ~/"$folder"/etc/apk/repositories
	./$bin apk update
        ./$bin apk add --no-cache bash
        sed -i 's/ash/bash/g' $folder/etc/passwd
        sed -i 's/bin\/sh/bin\/bash/g' $bin
	echo "export PULSE_SERVER=127.0.0.1" >> $folder/root/.bashrc
	echo 'bash .alpine' > $PREFIX/bin/$linux
	chmod +x $PREFIX/bin/$linux
	clear
	echo ""
	echo "Updating PostmarketOS,.."
	echo ""
	echo "#!/bin/bash
apk add -u --allow-untrusted postmarketos-keys
apk update ; apk upgrade
apk add nano sudo dialog
rm -rf ~/.bash_profile
exit" > $folder/root/.bash_profile
	bash $bin
	echo 'PRETTY_NAME="PostmarketOS Edge (Development Branch)"
NAME="PostmarketOS"
VERSION_ID="24.12"
VERSION="24.12 Edge (Development)"
VERSION_CODENAME=master
ID=postmarketos
ID_LIKE=alpine
HOME_URL="https://postmarketos.org"
DOCUMENTATION_URL="https://wiki.postmarketos.org"
SUPPORT_URL="https://wiki.postmarketos.org/wiki/Contributing"
BUG_REPORT_URL="https://gitlab.com/postmarketOS/pmaports/-/issues"
PRIVACY_POLICY_URL="https://postmarketos.org/privacy-policy"
ALPINE_VERSION="3.21 Edge (Development)"
ALPINE_CODENAME=edge
LOGO=postmarketos-logo' > ~/"$folder"/etc/os-release
	clear
	echo ""
        echo "You can login to PostmarketOS with 'postmarketos' script next time"
	echo ""
	#rm postmarketosdev.sh
else
        echo ""
	echo "Installation Unsuccessful"
        echo ""
fi
 #
### Script edited by 'WaHaSa', Script revision-4.
 #
