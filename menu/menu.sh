#!/bin/bash
# COLOR VALIDATION
clear
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
Error="${RED}Expired ${NC}"
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
#Status | Geo Project
clear


# // RUNNING SSH
if [[ $ssh_service == "running" ]]; then 
   status_ssh="${green}[ON]${NC}"
else
   status_ssh="${z}[OFF]${NC} "
fi

# // RUNNING WEBSOCKET
ssh_ws=$( systemctl status ws | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $ssh_ws == "running" ]]; then
    status_ws_epro="${green}[ON]${NC}"
else
    status_ws_epro="${z}[OFF]${NC} "
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
vlx=$(grep -c -E "^#& " "/etc/xray/config.json")
let vla=$vlx/2
# \\ Vmess account //
vmc=$(grep -c -E "^### " "/etc/xray/config.json")
let vma=$vmc/2
# \\ Trojan account //
ssh1="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
trx=$(grep -c -E "^#! " "/etc/xray/config.json")
let trb=$trx/2
# \\ shadowsocks account //
ssx=$(grep -c -E "^#!# " "/etc/xray/config.json")
let ssa=$ssx/2
# // ---- >>>
TZ="\033[1;35m___\033[1;34m___\033[1;32m___\033[1;36m___\033[1;37m___\033[1;34m"
vers="version.Sc 3.09"
# // ----->>>
r="\033[1;31m"  #REDTERANG
a=" ${z}ACCOUNT${NC}" 
BG_RED="\033[45;1m"
G='\033[35;1m'
clear
echo -e " ${z}┌──────────────────────────────────────────────────────────┐${NC}"
echo -e " ${z}│$NC •  ${W}OS ${NC}         : $MODEL${NC}"
echo -e " ${z}│$NC •  ${W}RAM ${NC}        : $tram / $uram MB $NC"
echo -e " ${z}│$NC •  ${W}DATE ${NC}       : $DATEVPS${NC}"
echo -e " ${z}│$NC •  ${W}TIME ${NC}       : $TIMEZONE${NC}"
echo -e " ${z}│$NC •  ${W}SERVER ${NC}     : ${cyan}$ISP${NC}"
echo -e " ${z}│$NC •  ${W}IP VPS ${NC}     : ${cyan}$MYIP${NC}"
echo -e " ${z}│$NC •  ${W}DOMAIN ${NC}     : ${cyan}$domain${NC}"
echo -e " ${z}└──────────────────────────────────────────────────────────┘${NC}"
echo -e " ${z}┌──────────────────────────────────────────────────────────┐${NC}"
echo -e " ${k}│ SSH $status_ssh NGINX $status_nginx  XRAY $status_xray DROP $status_dropbear"
echo -e " ${z}└──────────────────────────────────────────────────────────┘${NC}"
echo -e "       ───────────────────────────────────────────────${NC}"
echo -e "               SSH/OPENVPN/UDP :$NC $ssh1" "$a"
echo -e "               VMESS/WS/GRPC   :$NC $vma" "$a"
echo -e "               VLESS/WS/GRPC   :$NC $vla" "$a"
echo -e "               TROJAN/WS/GRPC  :$NC $trb" "$a"               
echo -e "       ───────────────────────────────────────────────${NC}" 
echo -e "         ${z}┌─────────────────────────────────────────┐${NC}"
echo -e "         ${z}│$NC Status  : $sts"
echo -e "         ${z}│$NC Client  : $username "
echo -e "         ${z}│$NC Expiry  : $exp ${NC} / $green $certifacate ${NC}Days"
echo -e "         ${z}└─────────────────────────────────────────┘${NC}"
echo -e " ${z}┌────────────────────────────────────────────────────────┐${NC}"
echo -e " ${z}│$NC ${G}01.)${NC} ssh OPENVPN ${NC}         ${G}06.)${NC} Restart           ${NC} ${z}│${NC}"
echo -e " ${z}│$NC ${G}02.)${NC} Vmess ${NC}               ${G}07.)${NC} Reboot            ${NC} ${z}│${NC}"    
echo -e " ${z}│$NC ${G}03.)${NC} Vless ${NC}               ${G}08.)${NC} Update            ${NC} ${z}│${NC}"   
echo -e " ${z}│$NC ${G}04.)${NC} Trojan ${NC}              ${G}09.)${NC} Setting           ${NC} ${z}│${NC}" 
echo -e " ${z}│$NC ${G}05.)${NC} Runing ${NC}              ${G}10.)${NC} Backup            ${NC} ${z}│${NC}" 
echo -e " ${z}└────────────────────────────────────────────────────────┘${NC}"
echo -e " "
read -p " options [ 1 / 12 ] >  " opt
echo -e ""
case $opt in
01 | 1) clear ; m-sshovpn ;;
02 | 2) clear ; m-vmess ;;
03 | 3) clear ; m-vless ;;
04 | 4) clear ; m-trojan ;;
05 | 5) clear ; m-allxray ;;
06 | 6) clear ; running ;;
07 | 7) clear ; reboot ;;
08 | 8) clear ; m-update ;;
19 | 9) clear ; m-system ;;
10 | 10) clear ; m-backup;;
11 | 11) clear ; $ressee ;;
12 | 12) clear ; key ;;
89 | 89) clear ; bannner ;;
88 | 88) clear ; new ;;
77 | 77) clear ; newx ;;
100) clear ; $up2u ;;
00 | 0) clear ; menu ;;
*) clear ; menu ;;
esac
