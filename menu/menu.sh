#!/bin/bash
# COLOR VALIDATION
clear
colornow=$(cat /etc/rmbl/theme/color.conf)
export NC="\e[0m"
export yl='\033[0;33m';
export RED="\033[0;31m"
export COLOR1="$(cat /etc/rmbl/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
export COLBG1="$(cat /etc/rmbl/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')"
WH='\033[1;37m'
y='\033[1;33m' #yellow
l='\033[0;37m'
BGX="\033[42m"
CYAN="\033[96m"
z="\033[93;1m" # // Hijau
zx="\033[97;1m" # // putih
RED='\033[0;31m'
NC='\033[0m'
gray="\e[1;30m"
Blue="\033[0;34m"
green='\033[92;1m'
grenbo="\e[92;1m"
purple="\033[1;95m"
YELL='\033[0;33m'
cyan="\033[1;36m"

# // installer Udp
UDPX="https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2"

# // Gettings Info
ISP=$(cat /etc/xray/isp)
CITY=$(cat /etc/xray/city)
IPVPS=$(curl -s ipv4.icanhazip.com)
domain=$(cat /etc/xray/domain)
RAM=$(free -m | awk 'NR==2 {print $2}')
USAGERAM=$(free -m | awk 'NR==2 {print $3}')
MEMOFREE=$(printf '%-1s' "$(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2 }')")
LOADCPU=$(printf '%-0.00001s' "$(top -bn1 | awk '/Cpu/ { cpu = "" 100 - $8 "%" }; END { print cpu }')")
MODEL=$(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')
CORE=$(printf '%-1s' "$(grep -c cpu[0-9] /proc/stat)")
DATEVPS=$(date +'%d/%m/%Y')
TIMEZONE=$(printf '%(%H:%M:%S)T')
SERONLINE=$(uptime -p | cut -d " " -f 2-10000)

clear
MYIP=$(curl -sS ipv4.icanhazip.com)
echo ""
#########################
# // USERNAME IZIN IPP
rm -f /usr/bin/user
username=$(curl -sS https://raw.githubusercontent.com/RMBL-VPN/permission/main/ipmini | grep $MYIP | awk '{print $2}')
echo "$username" >/usr/bin/user

# // VALIDITY
rm -f /usr/bin/e
valid=$(curl -sS https://raw.githubusercontent.com/RMBL-VPN/permission/main/ipmini | grep $MYIP | awk '{print $3}')
echo "$valid" > /usr/bin/e

# // DETAIL ORDER IZIN IP
username=$(cat /usr/bin/user)
oid=$(cat /usr/bin/ver)
exp=$(cat /usr/bin/e)

clear
# // DAYS LEFT
d1=$(date -d "$valid" +%s)
d2=$(date -d "$today" +%s)
certifacate=$(((d1 - d2) / 86400))

# // VPS INFORMATION
DATE=$(date +'%Y-%m-%d')
datediff() {
    d1=$(date -d "$1" +%s)
    d2=$(date -d "$2" +%s)
    echo -e "$COLOR1 $NC Expiry In   : $(( (d1 - d2) / 86400 )) Days"
}
mai="datediff "$Exp" "$DATE""

# Status ExpiRED Active | LUNATIC

# // AKTIVATED & EXPIRED
Info="${green}Activated${NC}"
Error="${green}Expired ${NC}"
#//
today=`date -d "0 days" +"%Y-%m-%d"`
Exp1=$(curl -sS https://raw.githubusercontent.com/RMBL-VPN/permission/main/ipmini | grep $MYIP | awk '{print $3}')
if [[ $today < $Exp1 ]]; then
sts="${Info}"
else
sts="${Error}"
fi
echo -e "\e[32mloading...\e[0m"
clear

# // GETTINGS SYSTEM
uptime="$(uptime -p | cut -d " " -f 2-10)"
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*} / ${coREDiilik:-1}))"
cpu_usage+=" %"
WKT=$(curl -s ipinfo.io/timezone )
DAY=$(date +%A)
DATE=$(date +%m/%d/%Y)
DATE2=$(date -R | cut -d " " -f -5)
author=$(cat /etc/profil)
#IPVPS=$(curl -s ipinfo.io/ip )
IPVPS=$(curl -sS ipv4.icanhazip.com)

cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
tram=$( free -m | awk 'NR==2 {print $2}' )
uram=$( free -m | awk 'NR==2 {print $3}' )
fram=$( free -m | awk 'NR==2 {print $4}' )
clear
ssh_service=$(/etc/init.d/ssh status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
dropbear_service=$(/etc/init.d/dropbear status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
haproxy_service=$(systemctl status haproxy | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
xray_service=$(systemctl status xray | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
nginx_service=$(systemctl status nginx | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
#Status | rmbl Project
clear


# // RUNNING SSH
ssh_ws=$( systemctl status ws-stunnel | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $ssh_ws == "running" ]]; then
    status_ws="${green}ON${NC}"
else
    status_ws="${RED}OFF${NC}"
fi
# // RUNNING WEBSOCKET
ssh_ws=$( systemctl status ws-stunnel | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $ssh_ws == "running" ]]; then
    status_ws="${green}ON${NC}"
else
    status_ws="${RED}OFF${NC}"
fi

# RUNNING HAPROXY
if [[ $haproxy_service == "running" ]]; then 
   status_haproxy="${green}[ON]${NC}"
else
   status_haproxy="${z}[OFF]${NC} "
fi

# RUNNING XRAY
if [[ $xray_service == "running" ]]; then 
   status_xray="${green}[ON]${NC}"
else
   status_xray="${z}[OFF]${NC} "
fi

# RUNNING NGINX
if [[ $nginx_service == "running" ]]; then 
   status_nginx="${green}[ON]${NC}"
else
   status_nginx="${z}[OFF]${NC} "
fi

# RUNNING DROPBEAR
if [[ $dropbear_service == "running" ]]; then 
   status_dropbear="${green}[ON]${NC}"
else
   status_dropbear="${z}[OFF]${NC} "
fi
# // UPDATE / REVISI all menu
REVISI="https://raw.githubusercontent.com/RMBL-VPN/vip/main/"

# // INFO CREATE ACCOUNT
# \\ Vless account //
vmess=$(grep -c -E "^#vmg " "/etc/xray/config.json")
vless=$(grep -c -E "^#vlg " "/etc/xray/config.json")
trtls=$(grep -c -E "^#trg " "/etc/xray/config.json")
total_ssh=$(grep -c -E "^### " "/etc/xray/ssh")
# // ---- >>>
TZ="\033[1;35m___\033[1;34m___\033[1;32m___\033[1;36m___\033[1;37m___\033[1;34m"
vers="version.Sc 3.09"
# // ----->>>
r="\033[1;31m"  #REDTERANG
a=" ${z}ACCOUNT${NC}" 
BG_RED="\033[45;1m"
G='\033[35;1m'
MODEL2=$(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')
LOADCPU=$(printf '%-0.00001s' "$(top -bn1 | awk '/Cpu/ { cpu = "" 100 - $8 "%" }; END { print cpu }')")
CORE=$(printf '%-1s' "$(grep -c cpu[0-9] /proc/stat)")
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*} / ${corediilik:-1}))"
cpu_usage+=" %"
vnstat_profile=$(vnstat | sed -n '3p' | awk '{print $1}' | grep -o '[^:]*')
vnstat -i ${vnstat_profile} >/etc/t1
ba=$(curl -s https://pastebin.com/raw/0gWiX6hE)
bulan=$(date +%b)
tahun=$(date +%y)
today=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $8}')
todayd=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $8}')
today_v=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $9}')
today_rx=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $2}')
today_rxv=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $3}')
today_tx=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $5}')
today_txv=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $6}')
if [ "$(grep -wc ${bulan} /etc/t1)" != '0' ]; then
bulan=$(date +%b)
month=$(vnstat -i ${vnstat_profile} | grep "$bulan $ba$tahun" | awk '{print $9}')
month_v=$(vnstat -i ${vnstat_profile} | grep "$bulan $ba$tahun" | awk '{print $10}')
month_rx=$(vnstat -i ${vnstat_profile} | grep "$bulan $ba$tahun" | awk '{print $3}')
month_rxv=$(vnstat -i ${vnstat_profile} | grep "$bulan $ba$tahun" | awk '{print $4}')
month_tx=$(vnstat -i ${vnstat_profile} | grep "$bulan $ba$tahun" | awk '{print $6}')
month_txv=$(vnstat -i ${vnstat_profile} | grep "$bulan $ba$tahun" | awk '{print $7}')
else
bulan2=$(date +%Y-%m)
month=$(vnstat -i ${vnstat_profile} | grep "$bulan2 " | awk '{print $8}')
month_v=$(vnstat -i ${vnstat_profile} | grep "$bulan2 " | awk '{print $9}')
month_rx=$(vnstat -i ${vnstat_profile} | grep "$bulan2 " | awk '{print $2}')
month_rxv=$(vnstat -i ${vnstat_profile} | grep "$bulan2 " | awk '{print $3}')
month_tx=$(vnstat -i ${vnstat_profile} | grep "$bulan2 " | awk '{print $5}')
month_txv=$(vnstat -i ${vnstat_profile} | grep "$bulan2 " | awk '{print $6}')
fi
if [ "$(grep -wc yesterday /etc/t1)" != '0' ]; then
yesterday=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $8}')
yesterday_v=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $9}')
yesterday_rx=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $2}')
yesterday_rxv=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $3}')
yesterday_tx=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $5}')
yesterday_txv=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $6}')
else
yesterday=NULL
yesterday_v=NULL
yesterday_rx=NULL
yesterday_rxv=NULL
yesterday_tx=NULL
yesterday_txv=NULL
fi
function m-bot2(){
clear
echo -e "$COLOR1┌──────────────────────────────────────────┐${NC}"
echo -e "$COLOR1  ${WH}Please select a Bot type below                 ${NC}"
echo -e "$COLOR1└──────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌──────────────────────────────────────────┐${NC}"
echo -e "$COLOR1  [ 1 ] ${WH}Buat/Edit BOT INFO Multi Login SSH, XRAY & TRANSAKSI   ${NC}"
echo -e ""
echo -e "$COLOR1  [ 2 ] ${WH}Buat/Edit BOT INFO Create User & Lain Lain    ${NC}"
echo -e ""
echo -e "$COLOR1  [ 3 ] ${WH}Buat/Edit BOT INFO Backup Telegram    ${NC}"
echo -e "$COLOR1└──────────────────────────────────────────┘${NC}"
read -p "   Please select numbers 1-3 or Any Button(Random) to exit : " bot
echo ""
if [[ $bot == "1" ]]; then
clear
rm -rf /etc/perlogin
mkdir -p /etc/perlogin
cd /etc/perlogin
touch token
touch id
echo -e ""
echo -e "$COLOR1 [ INFO ] ${WH}Create for database Multi Login"
read -rp "Enter Token (Creat on @BotFather) : " -e token2
echo "$token2" > token
read -rp "Enter Your Id (Creat on @userinfobot)  : " -e idat
echo "$idat" > id
sleep 1
m-bot2
fi
if [[ $bot == "2" ]]; then
clear
rm -rf /etc/per
mkdir -p /etc/per
cd /etc/per
touch token
touch id
echo -e ""
echo -e "$COLOR1 [ INFO ] ${WH}Create for database Akun Dan Lain Lain"
read -rp "Enter Token (Creat on @BotFather) : " -e token3
echo "$token3" > token
read -rp "Enter Your Id (Creat on @userinfobot)  : " -e idat2
echo "$idat2" > id
sleep 1
m-bot2
fi
if [[ $bot == "3" ]]; then
clear
rm -rf /usr/bin/token
rm -rf /usr/bin/idchat
echo -e ""
echo -e "$COLOR1 [ INFO ] ${WH}Create for database Backup Telegram"
read -rp "Enter Token (Creat on @BotFather) : " -e token23
echo "$token23" > /usr/bin/token
read -rp "Enter Your Id (Creat on @userinfobot)  : " -e idchat
echo "$idchat" > /usr/bin/idchat
sleep 1
m-bot2
fi
menu
}
clear
echo -e " $COLOR1╔══════════════════════════════════════════════════════════╗${NC}"
echo -e " $COLOR1║${NC}${COLBG1}                 ${WH} • RMBL VPN TUNNELING •                  ${NC}$COLOR1║ $NC"
echo -e " $COLOR1╚══════════════════════════════════════════════════════════╝${NC}"
echo -e " $COLOR1╔══════════════════════════════════════════════════════════╗${NC}"
echo -e " $COLOR1║$NC${WH}• OS            ${COLOR1}: ${WH}$MODEL${NC}"
echo -e " $COLOR1║$NC${WH}• RAM           ${COLOR1}: ${WH}$tram / $uram MB${NC}"
echo -e " $COLOR1║$NC${WH}• DATE          ${COLOR1}: ${WH}$DATEVPS${NC}"
echo -e " $COLOR1║$NC${WH}• TIME          ${COLOR1}: ${WH}$TIMEZONE${NC}"
echo -e " $COLOR1║$NC${WH}• ISP           ${COLOR1}: ${WH}$ISP${NC}"
echo -e " $COLOR1║$NC${WH}• City          ${COLOR1}: ${WH}$CITY${NC}"
echo -e " $COLOR1║$NC${WH}• IP VPS        ${COLOR1}: ${WH}$MYIP${NC}"
echo -e " $COLOR1║$NC${WH}• DOMAIN        ${COLOR1}: ${WH}$domain${NC}"
echo -e " $COLOR1╚══════════════════════════════════════════════════════════╝${NC}"
echo -e "    $COLOR1╔═════════════════════════════════════════════════╗${NC}"
echo -e "    $COLOR1║$NC ${WH}[ SSH WS : ${status_ws} ${WH}] ${WH}[ XRAY : ${status_xray} ${WH}] ${WH}[ NGINX : ${status_nginx} ${WH}]$COLOR1║$NC"
echo -e "    $COLOR1╚═════════════════════════════════════════════════╝${NC}"
echo -e "    $COLOR1╔═════════════════════════════════════════════════╗${NC}"
echo -e "    $COLOR1║ ${WH} ${WH}SSH       VMESS         VLESS        TROJAN   $NC $COLOR1║ $NC"
echo -e "    $COLOR1║ ${WH} ${WH} ${COLOR1}$total_ssh${WH}          ${COLOR1}$vmess${WH}             ${COLOR1}$vless${WH}            ${COLOR1}${trtls}${WH}      $NC $COLOR1║ $NC"
echo -e "    $COLOR1╚═════════════════════════════════════════════════╝${NC}"
echo -e " $COLOR1╔════════════════════════════════════════════════════════╗${NC}"
echo -e " $COLOR1║$NC ${WH}[${COLOR1}01${WH}]${NC} ${COLOR1}• ${WH}SSH-WS    ${WH}[${COLOR1}Menu${WH}]     ${NC} $COLOR1║${NC}  ${WH}[${COLOR1}07${WH}]${NC} ${COLOR1}• ${WH}BOT NOTIF  ${WH}[${COLOR1}Menu${WH}] $COLOR1║${NC}"
echo -e " $COLOR1║$NC ${WH}[${COLOR1}02${WH}]${NC} ${COLOR1}• ${WH}VMESS     ${WH}[${COLOR1}Menu${WH}]     ${NC} $COLOR1║${NC}  ${WH}[${COLOR1}08${WH}]${NC} ${COLOR1}• ${WH}THEMES     ${WH}[${COLOR1}Menu${WH}] $COLOR1║${NC}"    
echo -e " $COLOR1║$NC ${WH}[${COLOR1}03${WH}]${NC} ${COLOR1}• ${WH}VLESS     ${WH}[${COLOR1}Menu${WH}]     ${NC} $COLOR1║${NC}  ${WH}[${COLOR1}09${WH}]${NC} ${COLOR1}• ${WH}UPDATE     ${WH}[${COLOR1}Menu${WH}] $COLOR1║${NC}"   
echo -e " $COLOR1║$NC ${WH}[${COLOR1}04${WH}]${NC} ${COLOR1}• ${WH}TROJAN    ${WH}[${COLOR1}Menu${WH}]     ${NC} $COLOR1║${NC}  ${WH}[${COLOR1}10${WH}]${NC} ${COLOR1}• ${WH}SYSTEM     ${WH}[${COLOR1}Menu${WH}] $COLOR1║${NC}" 
echo -e " $COLOR1║$NC ${WH}[${COLOR1}05${WH}]${NC} ${COLOR1}• ${WH}RUNNING   ${WH}[${COLOR1}Menu${WH}]     ${NC} $COLOR1║${NC}  ${WH}[${COLOR1}11${WH}]${NC} ${COLOR1}• ${WH}BACKUP     ${WH}[${COLOR1}Menu${WH}] $COLOR1║${NC}" 
echo -e " $COLOR1║$NC ${WH}[${COLOR1}06${WH}]${NC} ${COLOR1}• ${WH}BOT AKUN  ${WH}[${COLOR1}Menu${WH}]     ${NC} $COLOR1║${NC}  ${WH}[${COLOR1}12${WH}]${NC} ${COLOR1}• ${WH}REBOOT     ${WH}[${COLOR1}Menu${WH}] $COLOR1║${NC}" 
echo -e " $COLOR1╚════════════════════════════════════════════════════════╝${NC}"
echo -e "    $COLOR1╔═════════════════════════════════════════════════╗${NC}"
echo -e "    $COLOR1║$NC  ${WH}Total    $COLOR1║${NC}    ${WH}Today     ${WH}Yesterday     ${WH}Month         ${NC}"
echo -e "    $COLOR1║$NC ${WH}Bantwidth $COLOR1║${NC}  ${WH}$today_tx $today_txv   ${WH}$yesterday_tx $yesterday_txv   ${WH}$month_tx $month_txv$COLOR1${NC}"
echo -e "    $COLOR1╚═════════════════════════════════════════════════╝${NC}"
echo -e "         $COLOR1╔═════════════════════════════════════════╗${NC}"
echo -e "         $COLOR1║$NC ${WH}Versi  ${NC}: ${WH}$(cat /opt/.ver) Version${NC}$COLOR1"
echo -e "         $COLOR1║$NC ${WH}Status${NC} : $sts"
echo -e "         $COLOR1║$NC ${WH}Client${NC} : ${WH}$author${NC}"
echo -e "         $COLOR1║$NC ${WH}Expiry${NC} : $green$certifacate ${NC}Days"
echo -e "         $COLOR1╚═════════════════════════════════════════╝${NC}"
echo -e " "
echo -ne " ${WH}Select menu ${COLOR1}: ${WH}"; read opt
echo -e ""
case $opt in
01 | 1) clear ; m-sshovpn ;;
02 | 2) clear ; m-vmess ;;
03 | 3) clear ; m-vless ;;
04 | 4) clear ; m-trojan ;;
05 | 5) clear ; running ;;
06 | 6) clear ; m-bot ;;
07 | 7) clear ; m-bot2  ;;
08 | 8) clear ; m-theme ;;
09 | 9) clear ; m-update ;;
10 | 10) clear ; m-system ;;
11 | 11) clear ; m-backup;;
12 | 12) clear ; reboot ;;
89 | 89) clear ; bannner ;;
88 | 88) clear ; new ;;
77 | 77) clear ; newx ;;
100) clear ; $up2u ;;
00 | 0) clear ; menu ;;
*) clear ; menu ;;
esac
