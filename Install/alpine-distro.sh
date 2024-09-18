#!/data/data/com.termux/files/usr/bin/bash
pkg install root-repo x11-repo
pkg install proot xz-utils proot-distro pulseaudio -y
termux-setup-storage
distro=bin/etc/proot-distro
rootfs=bin/var/lib/proot-distro/installed-rootfs/alpine
echo 'DISTRO_NAME="Alpine Linux"
DISTRO_COMMENT="Alpine Edge (Development Branch)"

TARBALL_URL['aarch64']=""
TARBALL_SHA256['aarch64']=""
TARBALL_URL['arm']=""
TARBALL_SHA256['arm']=""
TARBALL_URL['i686']=""
TARBALL_SHA256['i686']=""
TARBALL_URL['x86_64']=""
TARBALL_SHA256['x86_64']=""
' > $PREFIX/$distro/alpine-distro.sh
    #proot-distro install alpine-distro
    echo "alpine" > $PREFIX/$rootfs/etc/hostname
    echo "127.0.0.1 localhost" > $PREFIX/$rootfs/etc/hosts
    echo "nameserver 8.8.8.8" > $PREFIX/$rootfs/etc/resolv.conf
    echo "#Alpine Development
https://dl-cdn.alpinelinux.org/alpine/edge/main
https://dl-cdn.alpinelinux.org/alpine/edge/testing
https://dl-cdn.alpinelinux.org/alpine/edge/community" > $PREFIX/$rootfs/etc/apk/repositories
echo '#!/bin/bash
pulseaudio --start \
    --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" \
    --exit-idle-time=-1
proot-distro login alpine --shared-tmp' > $PREFIX/bin/alpine
echo "export PULSE_SERVER=127.0.0.1" >> $PREFIX/$rootfs/root/.bashrc
    chmod +x $PREFIX/bin/alpine
    clear
    echo ""
    echo "Updating Alpine,.."
    echo ""
    echo "#!/bin/bash
apk update ; apk upgrade
apk add nano sudo dialog
rm -rf ~/.bash_profile
exit" > $PREFIX/$rootfs/root/.bash_profile
    bash alpine
    echo 'PRETTY_NAME="Alpine Edge (Development Branch)"
NAME="Alpine"
VERSION_ID="3.21"
VERSION="3.21.0 Build-20240807"
VERSION_CODENAME=edge
ID=alpine
HOME_URL="https://alpinelinux.org"
DOCUMENTATION_URL="https://wiki.alpinelinux.org"
SUPPORT_URL="https://alpinelinux.org/community"
BUG_REPORT_URL="https://gitlab.alpinelinux.org/alpine/aports/-/issues"
PRIVACY_POLICY_URL="https://wiki.alpinelinux.org/wiki/Alpine_Linux:Privacy_policy"
LOGO=alpine-linux-logo' > $PREFIX/$rootfs/etc/os-release
    clear
    echo ""
    echo "You can login to Alpine with 'alpine' script next time"
    echo ""
    #rm $PREFIX/$distro/alpine-distro.sh
    #rm alpine-distro.sh
 #
### Script edited by 'WaHaSa', Script revision-4.
 #
