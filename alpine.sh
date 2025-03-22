
lib=../usr/var/lib
mkdir -p $lib/proot-distro
mkdir -p $lib/proot-distro/installed-rootfs
mkdir -p $lib/proot-distro/installed-rootfs/alpine

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
