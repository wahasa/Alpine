#!/data/data/com.termux/files/usr/bin/bash
blk='\e[0;30m' red='\e[0;31m'
grn='\e[0;32m' ylw='\e[0;33m'
blu='\e[0;34m' pur='\e[0;35m'
cyn='\e[0;36m' wht='\e[0;37m'
    clear
    echo ""
    echo "> Installing, the necessary components,."
    echo ""
pkg install root-repo x11-repo
pkg install proot xz-utils neofetch pulseaudio -y
#termux-setup-storage
clear
printf "${blu}  Welcome To Alpine Termux For Android\n"
printf "${wht}> https://github.com/wahasa/Alpine\n"
printf "\n"
printf "${cyn}List Alpine Release Versions\n"
printf "\n"
printf "${ylw}[=] ${grn}[A.B]-[C] ${ylw}[=] ${grn}[A.B]-[C]\n"
printf "${ylw}[+] ${grn}[3.20]-[3]          ${ylw}[+] ${grn}[3.12]-[12]\n"
printf "${ylw}[+] ${grn}(3.19].[4]          ${ylw}[+] ${grn}[3.11]-[13]\n"
printf "${ylw}[+] ${grn}(3.18].[9]          ${ylw}[+] ${grn}[3.10]-[9]\n"
printf "${ylw}[+] ${grn}(3.17].[10]         ${ylw}[+] ${grn}[3.9]-[6]\n"
printf "${ylw}[+] ${grn}[3.16].[9]          ${ylw}[+] ${grn}[3.8]-[5]\n"
printf "${ylw}[+] ${grn}[3.15].[11]         ${ylw}[+] ${grn}[3.7]-[3]\n"
printf "${ylw}[+] ${grn}[3.14].[10]         ${ylw}[+] ${grn}[3.6]-[5]\n"
printf "${ylw}[+] ${grn}[3.13].[12]         ${ylw}[+] ${grn}[3.5]-[3]\n"
printf "${blu}\n"

read -p "Install select with format [A.B], Alpine : " a
read -p "Next select with format [C], build : " b

echo "[+] Installing Alpine $a.$b,."
echo "[+] Checking device architecture,."
echo ""
echo "[+] Downloading rootfs, please wait,."
echo ""
echo "[+] Extracting rootfs, please wait,."
echo ""
echo "[+] Preparing, the necessary components,."
echo "> Writing launch script."
echo "> Fixing shebang of Alpine."
echo "> Making Alpine executable."
echo "> Fixing permissions for Alpine."
echo "> Removing image for some space."
echo "[+] Updating Package, please wait,."
echo ""
echo "[+] Installation completed."
echo ""
