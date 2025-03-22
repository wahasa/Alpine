#!/data/data/com.termux/files/usr/bin/bash
pkg install root-repo x11-repo
pkg install proot neofetch pulseaudio -y
#termux-setup-storage

lib=../usr/var/lib
if [[ ! -d "$lib/proot-distro" ]]; then
   mkdir -p $lib/proot-distro
   mkdir -p $lib/proot-distro/installed-rootfs
   mkdir -p $lib/proot-distro/installed-rootfs/alpine
fi
folder=$lib/proot-distro/installed-rootfs/alpine
tarball="alpine-rootfs.tar.gz"
if [ ! -f $tarball ]; then
   echo "Download Rootfs, this may take a while base on your internet speed."
         case `dpkg --print-architecture` in
         aarch64)
                archurl="aarch64" ;;
         arm*)
                archurl="armv7" ;;
         i386)
		archurl="x86" ;;
         x86_64)
                archurl="x86_64" ;;
         *)
    echo "Unknown Architecture."; exit 1 ;;
    esac
    wget "https://dl-cdn.alpinelinux.org/alpine/v${alpine}/releases/${archurl}/alpine-minirootfs-${alpine}.${build}-${archurl}.tar.gz" -O $tarball
fi
    echo "Decompressing Rootfs, please be patient."
    proot --link2symlink tar -xpf ~/${tarball} -C $folder/ --exclude='dev' ||:
    
