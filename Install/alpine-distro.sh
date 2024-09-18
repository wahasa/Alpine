pkg install root-repo x11-repo
pkg install proot xz-utils neofetch pulseaudio -y
termux-setup-storage
    echo "alpine" > ~/"$folder"/etc/hostname
   	echo "127.0.0.1 localhost" > ~/"$folder"/etc/hosts
    echo "nameserver 8.8.8.8" > ~/"$folder"/etc/resolv.conf
    echo "#Alpine Development
https://dl-cdn.alpinelinux.org/alpine/edge/main
https://dl-cdn.alpinelinux.org/alpine/edge/testing
https://dl-cdn.alpinelinux.org/alpine/edge/community" > ~/"$folder"/etc/apk/repositories
    echo "export PULSE_SERVER=127.0.0.1" >> $folder/root/.bashrc
    echo 'bash .alpine' > $PREFIX/bin/$linux
    chmod +x $PREFIX/bin/$linux
    clear
    echo ""
    echo "Updating Alpine,.."
    echo ""
    echo "#!/bin/bash
apk update ; apk upgrade
apk add nano sudo dialog
rm -rf ~/.bash_profile
exit" > $folder/root/.bash_profile
    bash $bin
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
LOGO=alpine-linux-logo' > ~/"$folder"/etc/os-release
    clear
    echo ""
    echo "You can login to Alpine with 'alpine' script next time"
    echo ""
    #rm alpinedev.sh
 #
### Script edited by 'WaHaSa', Script revision-4.
 #
