#!/data/data/com.termux/files/usr/bin/bash
pkg install root-repo x11-repo
pkg install proot xz-utils neofetch pulseaudio -y
#termux-setup-storage
alpine=edge
build=20240923
   echo ""
   neofetch --ascii_distro PostmarketOS -L
folder=postmarketos-fs
if [ -d "$folder" ]; then
         first=1
         echo "Skipping Downloading."
fi
tarball="postmarketos-rootfs.tar.gz"
if [ "$first" != 1 ];then
         if [ ! -f $tarball ]; then
               echo "Download Rootfs, this may take a while base on your internet speed."
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
                       echo "Unknown Architecture."; exit 1 ;;
               esac
	       wget -q --show-progress "https://dl-cdn.alpinelinux.org/alpine/${alpine}/releases/${archurl}/alpine-minirootfs-${build}-${archurl}.tar.gz" -O $tarball
	 fi
         mkdir -p $folder
	 mkdir -p $folder/binds
         echo "Decompressing Rootfs, please be patient."
         proot --link2symlink tar -xpf ~/${tarball} -C ~/$folder/ --exclude='dev'||:
    fi
    echo "localhost" > $folder/etc/hostname
    echo "127.0.0.1 localhost" > $folder/etc/hosts
    echo "nameserver 8.8.8.8" > $folder/etc/resolv.conf
bin=.postmarketos
linux=postmarketos
echo ""
echo "Writing launch script"
cat > $bin <<- EOM
#!/data/data/com.termux/files/usr/bin/bash
cd \$(dirname \$0)
## Start pulseaudio
pulseaudio --start --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" --exit-idle-time=-1
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
command+=" -b /dev/null:/proc/stat"
command+=" -b /dev/urandom:/dev/random"
command+=" -b /proc"
command+=" -b /proc/self/fd:/dev/fd"
command+=" -b /proc/self/fd/0:/dev/stdin"
command+=" -b /proc/self/fd/1:/dev/stdout"
command+=" -b /proc/self/fd/2:/dev/stderr"
command+=" -b /sys"
command+=" -b /data/data/com.termux/files/usr/tmp:/tmp"
command+=" -b $folder/root:/dev/shm"
## Uncomment the following line to have access to the home directory of termux
#command+=" -b /data/data/com.termux/files/home:/root"
## Uncomment the following line to mount /sdcard directly to /
command+=" -b /sdcard"
command+=" -b /mnt"
command+=" -w /root"
command+=" /usr/bin/env -i"
command+=" HOME=/root"
command+=" PATH=/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/games:/usr/local/games"
command+=" TERM=\$TERM"
command+=" LC_ALL=C"
command+=" LANG=C.UTF-8"
command+=" /bin/sh --login"
com="\$@"
if [ -z "\$1" ];then
   exec \$command
else
   \$command -c "\$com"
fi
EOM
     echo ""
     echo "Fixing shebang of $linux"
     termux-fix-shebang $bin
     echo "Making $linux executable"
     chmod +x $bin
     echo "Fixing permissions for $linux"
     #chmod -R 755 $folder
     echo "Removing image for some space"
     rm $tarball
     echo ""
echo "#PostmarketOS Repositories
https://mirror.postmarketos.org/postmarketos/master
https://dl-cdn.alpinelinux.org/alpine/edge/main
https://dl-cdn.alpinelinux.org/alpine/edge/testing
https://dl-cdn.alpinelinux.org/alpine/edge/community" > $folder/etc/apk/repositories
echo "export PULSE_SERVER=127.0.0.1" >> $folder/root/.bashrc
echo 'bash .postmarketos' > $PREFIX/bin/$linux
chmod +x $PREFIX/bin/$linux
     ./$bin apk add --no-cache bash
     ./$bin apk add -u --allow-untrusted postmarketos-keys
     sed -i 's/ash/bash/g' $folder/etc/passwd
     sed -i 's/bin\/sh/bin\/bash/g' $bin
     clear
     echo ""
     echo "Updating PostmarketOS,.."
     echo ""
echo "#!/bin/bash
touch ~/.hushlogin
apk update ; apk upgrade
apk add dialog nano sudo ncurses tzdata
ln -s /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
rm -rf ~/.bash_profile
exit" > $folder/root/.bash_profile
     bash $bin
     sleep 2
echo 'PRETTY_NAME="PostmarketOS Edge (Development Branch)"
NAME="PostmarketOS"
VERSION_ID="24.12"
VERSION="24.12 Edge"
VERSION_CODENAME=edge
ID=postmarketos
ID_LIKE=alpine
HOME_URL="https://postmarketos.org"
SUPPORT_URL="https://gitlab.postmarketos.org/postmarketOS"
BUG_REPORT_URL="https://gitlab.com/postmarketOS/pmaports/-/issues"
ALPINE_VERSION="3.21 Edge"
ALPINE_CODENAME=edge
LOGO=postmarketos-logo' > $folder/etc/os-release
     clear
     echo ""
     echo "You can login to PostmarketOS with 'postmarketos' script next time"
     echo ""
     #rm postmarketosdev.sh
#
## Script edited by 'WaHaSa', Script revision-5.
##
