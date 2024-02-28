#!/data/data/com.termux/files/usr/bin/bash
pkg install root-repo x11-repo
pkg install proot pulseaudio -y
termux-setup-storage
alpine=v3.15
build=9
linux=alpine
folder=alpine-fs
tarball="alpine-rootfs.tar.gz"
mkdir -p $folder $folder/binds
[ -f $tarball ] && check=1
if [ "$check" -eq "1" ] > /dev/null 2>&1; then
	echo "Please Waiting,."
	if [ -x "$(command -v neofetch)" ]; then
		neofetch --ascii_distro Alpine -L
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
		echo "unknown architecture"; exit 1 ;;
	esac
	url=https://dl-cdn.alpinelinux.org/alpine/${alpine}/releases/${archurl}/alpine-minirootfs-${alpine}.${build}-${archurl}.tar.gz
	echo "Downloading and Extracting Rootfs,."
	echo ""
	if [ -x "$(command -v neofetch)" ]; then
		neofetch --ascii_distro Alpine -L
	fi
	wget -qO- --tries=0 $url --show-progress --progress=bar:force:noscroll |proot --link2symlink tar -zxf - -C $folder --exclude='dev' || :
fi
bin=.alpine
if [ -d $folder/var ];then
	echo ""
	echo "Writing launch script"
	echo ""

	cat > $bin <<- EOM
	#!/data/data/com.termux/files/usr/bin/bash
pulseaudio --start \
    --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" \
    --exit-idle-time=-1
	cd \$(dirname \$0)
	## unset LD_PRELOAD in case termux-exec is installed
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
	## uncomment the following line to have access to the home directory of termux
	#command+=" -b /data/data/com.termux/files/home:/root"
	## uncomment the following line to mount /sdcard directly to /
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
		chmod +x $bin
		termux-fix-shebang $bin
echo '#!/bin/bash
bash .alpine' > $PREFIX/bin/$linux
chmod +x $PREFIX/bin/$linux
	fi

	FD=$folder
	if [ -d "$FD" ]; then
	echo "Making $linux executable"
		#chmod +x $bin
	fi

	UFD=$folder/binds
	if [ -d "$UFD" ]; then
	echo "Removing image for some space"
		#rm $tarball
	fi

	echo ""
	echo "" > $folder/etc/fstab
	rm -rf $folder/etc/resolv.conf
	echo "alpine" > ~/"$folder"/etc/hostname
   	echo "127.0.0.1 localhost" > ~/"$folder"/etc/hosts
	echo "nameserver 8.8.8.8" > ~/"$folder"/etc/resolv.conf
        echo "Alpine Repositories
https://dl-cdn.alpinelinux.org/alpine/v3.15/main
https://dl-cdn.alpinelinux.org/alpine/v3.15/community" > ~/"$folder"/etc/apk/repositories
	./$bin apk update
        ./$bin apk add --no-cache bash
        sed -i 's/ash/bash/g' $folder/etc/passwd
        sed -i 's/bin\/sh/bin\/bash/g' $bin
	echo ""
	echo "Installation Finished"
	rm -rf $folder/root/.bash_profile
	clear
	echo ""
	echo "Updating Alpine,.."
	echo ""
  	echo "#!/bin/bash
apk update && apk upgrade
apk add nano sudo
rm -rf ~/.bash_profile
exit" > $folder/root/.bash_profile
	bash $bin
	clear
	echo ""
        echo "You can now start Alpine with 'alpine' script next time"
	echo ""
	#rm Alpine3.15.sh
else
	echo "Installation unsuccessful"
fi
#
