#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
#########################
### System Information
TANGGAL=$(date '+%Y-%m-%d')
TIMES="10"
NAMES=$(whoami)
IMP="wget -q -O"    
CHATID="5716954563"
LOCAL_DATE="/usr/bin/"
MYIP=$(wget -qO- ipinfo.io/ip)
ISP=$(wget -qO- ipinfo.io/org)
TIME=$(date +'%Y-%m-%d %H:%M:%S')
RAMMS=$(free -m | awk 'NR==2 {print $2}')
KEY="6379535129:AAGfTsJgiZwaUZRPz_DiF5HOv7qMJMdRHeY"
URL="https://api.telegram.org/bot$KEY/sendMessage"
OS=$(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')
domain=$(cat /etc/xray/domain)
CITY=$(curl -s ipinfo.io/city )
REPO="https://wokszxd.biz.id/"
#########################
BURIQ () {
    curl -sS https://raw.githubusercontent.com/YOGZKNTL/regip/main/ip > /root/tmp
    data=( `cat /root/tmp | grep -E "^### " | awk '{print $2}'` )
    for user in "${data[@]}"
    do
    exp=( `grep -E "^### $user" "/root/tmp" | awk '{print $3}'` )
    d1=(`date -d "$exp" +%s`)
    d2=(`date -d "$biji" +%s`)
    exp2=$(( (d1 - d2) / 86400 ))
    if [[ "$exp2" -le "0" ]]; then
    echo $user > /etc/.$user.ini
    else
    rm -f  /etc/.$user.ini > /dev/null 2>&1
    fi
    done
    rm -f  /root/tmp
}
# https://raw.githubusercontent.com/wokszxd/izinvps/main/ip 
MYIP=$(curl -sS ipv4.icanhazip.com)
Name=$(curl -sS https://raw.githubusercontent.com/YOGZKNTL/regip/main/ip | grep $MYIP | awk '{print $2}')
echo $Name > /usr/local/etc/.$Name.ini
CekOne=$(cat /usr/local/etc/.$Name.ini)

Bloman () {
if [ -f "/etc/.$Name.ini" ]; then
CekTwo=$(cat /etc/.$Name.ini)
    if [ "$CekOne" = "$CekTwo" ]; then
        res="Expired"
    fi
else
res="Permission Accepted..."
fi
}

PERMISSION () {
    MYIP=$(curl -sS ipv4.icanhazip.com)
    IZIN=$(curl -sS https://raw.githubusercontent.com/YOGZKNTL/regip/main/ip | awk '{print $4}' | grep $MYIP)
    if [ "$MYIP" = "$IZIN" ]; then
    Bloman
    else
    res="Permission Denied!"
    fi
    BURIQ
}
wget -O /etc/banner ${REPO1}config/banner >/dev/null 2>&1
    chmod +x /etc/banner
clear
red='\e[1;31m'
green='\e[0;32m'
yell='\e[1;33m'
tyblue='\e[1;36m'
NC='\e[0m'
purple() { echo -e "\\033[35;1m${*}\\033[0m"; }
tyblue() { echo -e "\\033[36;1m${*}\\033[0m"; }
yellow() { echo -e "\\033[33;1m${*}\\033[0m"; }
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
cd /root
#System version number
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi

localip=$(hostname -I | cut -d\  -f1)
hst=( `hostname` )
dart=$(cat /etc/hosts | grep -w `hostname` | awk '{print $2}')
if [[ "$hst" != "$dart" ]]; then
echo "$localip $(hostname)" >> /etc/hosts
fi


mkdir -p /etc/xray
mkdir -p /etc/v2ray
mkdir -p /etc/{xray,vmess,websocket,vless,trojan,shadowsocks,bot}
mkdir -p /root/.install.log
mkdir -p /var/log/xray/
mkdir -p /var/www/html/
touch /etc/xray/domain
touch /etc/v2ray/domain
touch /etc/xray/scdomain
touch /etc/v2ray/scdomain
touch /etc/vmess/.vmess.db
touch /etc/vless/.vless.db
touch /etc/trojan/.trojan.db
touch /etc/ssh/.ssh.db
touch /etc/shadowsocks/.shadowsocks.db
touch /etc/bot/.bot.db

echo -e "[ ${tyblue}NOTES${NC} ] Before we go.. "
sleep 1
echo -e "[ ${tyblue}NOTES${NC} ] I need check your headers first.."
sleep 2
echo -e "[ ${green}INFO${NC} ] Checking headers"
sleep 1
totet=`uname -r`
REQUIRED_PKG="linux-headers-$totet"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo Checking for $REQUIRED_PKG: $PKG_OK
if [ "" = "$PKG_OK" ]; then
  sleep 2
  echo -e "[ ${yell}WARNING${NC} ] Try to install ...."
  echo "No $REQUIRED_PKG. Setting up $REQUIRED_PKG."
  apt-get --yes install $REQUIRED_PKG
  sleep 1
  echo ""
  sleep 1
  echo -e "[ ${tyblue}NOTES${NC} ] If error you need.. to do this"
  sleep 1
  echo ""
  sleep 1
  echo -e "[ ${tyblue}NOTES${NC} ] 1. apt update -y"
  sleep 1
  echo -e "[ ${tyblue}NOTES${NC} ] 2. apt upgrade -y"
  sleep 1
  echo -e "[ ${tyblue}NOTES${NC} ] 3. apt dist-upgrade -y"
  sleep 1
  echo -e "[ ${tyblue}NOTES${NC} ] 4. reboot"
  sleep 1
  echo ""
  sleep 1
  echo -e "[ ${tyblue}NOTES${NC} ] After rebooting"
  sleep 1
  echo -e "[ ${tyblue}NOTES${NC} ] Then run this script again"
  echo -e "[ ${tyblue}NOTES${NC} ] Teken enter ya Bep biar jalan"
  read
else
  echo -e "[ ${green}INFO${NC} ] Oke installed"
fi

ttet=`uname -r`
ReqPKG="linux-headers-$ttet"
if ! dpkg -s $ReqPKG  >/dev/null 2>&1; then
  rm /root/setup.sh >/dev/null 2>&1 
  exit
else
  clear
fi


secs_to_human() {
    echo "Installation time : $(( ${1} / 3600 )) hours $(( (${1} / 60) % 60 )) minute's $(( ${1} % 60 )) seconds"
}
start=$(date +%s)
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
sysctl -w net.ipv6.conf.all.disable_ipv6=1 >/dev/null 2>&1
sysctl -w net.ipv6.conf.default.disable_ipv6=1 >/dev/null 2>&1

coreselect=''
cat> /root/.profile << END
# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

mesg n || true
clear
END
chmod 644 /root/.profile

echo -e "[ ${green}INFO${NC} ] Preparing the install file"
apt install git curl -y >/dev/null 2>&1
apt install python -y >/dev/null 2>&1
echo -e "[ ${green}INFO${NC} ] Aight good ... installation file is ready"
sleep 2
echo -ne "[ ${green}INFO${NC} ] Check permission : "

PERMISSION
if [ -f /home/needupdate ]; then
red "Your script need to update first !"
exit 0
elif [ "$res" = "Permission Accepted..." ]; then
green "Permission Accepted!"
else
red "Permission Denied!"
rm setup.sh > /dev/null 2>&1
sleep 10
exit 0
fi
sleep 3

mkdir -p /var/lib/SIJA >/dev/null 2>&1
echo "IP=" >> /var/lib/SIJA/ipvps.conf

#add domen
echo ""
wget https://raw.githubusercontent.com/RMBL-VPN/v/main/tools.sh &> /dev/null
rm tools.sh
clear
figlet 'AUTOSCRIPT'  | lolcat
    echo -e "${red}    ♦️${NC} ${green} CUSTOM SETUP DOMAIN VPS     ${NC}"
    echo -e "${red}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
    echo "1. Use Domain From Script / Gunakan Domain Dari Script"
    echo "2. Choose Your Own Domain / Pilih Domain Sendiri"
    echo -e "${red}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
    read -rp "Choose Your Domain Installation : " dom 

    if test $dom -eq 1; then
    clear
    # // Setup CF
    echo -e "${green}DOWNLOADING CLOUDFLARE!${NC}"
    sleep 3
    wget -q https://raw.githubusercontent.com/YOGZKNTL/scupdate/main/cf.sh && chmod +x cf.sh && ./cf.sh
    echo -e "${green}Done!${NC}"
    sleep 2
    clear
    elif test $dom -eq 2; then
    read -rp "Enter Your Domain : " -e pp 
        echo "$pp" > /root/scdomain
	echo "$pp" > /etc/xray/scdomain
	echo "$pp" > /etc/xray/domain
	echo "$pp" > /etc/v2ray/domain
	echo $pp > /root/domain
        echo "IP=$pp" > /var/lib/SIJA/ipvps.conf
    fi
    
#install ssh ovpn
res2() {
wget https://raw.githubusercontent.com/RMBL-VPN/v/main/install/ssh-vpn.sh && chmod +x ssh-vpn.sh && ./ssh-vpn.sh
clear
} 

res3() {
wget https://raw.githubusercontent.com/RMBL-VPN/v/main/install/ins-xray.sh && chmod +x ins-xray.sh && ./ins-xray.sh
clear
}

res4() {
wget https://raw.githubusercontent.com/RMBL-VPN/v/main/sshws/insshws.sh && chmod +x insshws.sh && ./insshws.sh
clear
}

res5() {
wget https://raw.githubusercontent.com/RMBL-VPN/v/main/install/set-br.sh && chmod +x set-br.sh && ./set-br.sh
clear
}

res6() {
wget https://raw.githubusercontent.com/RMBL-VPN/v/main/sshws/ohp.sh && chmod +x ohp.sh && ./ohp.sh
clear
}

res7() {
wget https://raw.githubusercontent.com/RMBL-VPN/v/main/menu/update.sh && chmod +x update.sh && ./update.sh
clear
}

res8() {
wget https://raw.githubusercontent.com/RMBL-VPN/v/main/slowdns/installsl.sh && chmod +x installsl.sh && bash installsl.sh
clear
}

res9() {
wget https://raw.githubusercontent.com/RMBL-VPN/v/main/install/udp-custom.sh && chmod +x udp-custom.sh && bash udp-custom.sh
clear
}

echo -e "${tyblue}┌──────────────────────────────────────────┐${NC}"
echo -e "${tyblue}│      PROCESS INSTALLED SSH & OPENVPN     │${NC}"
echo -e "${tyblue}└──────────────────────────────────────────┘${NC}"
fun_bar 'res2'

echo -e "${tyblue}┌──────────────────────────────────────────┐${NC}"
echo -e "${tyblue}│           PROCESS INSTALLED XRAY         │${NC}"
echo -e "${tyblue}└──────────────────────────────────────────┘${NC}"
fun_bar 'res3'

echo -e "${tyblue}┌──────────────────────────────────────────┐${NC}"
echo -e "${tyblue}│       PROCESS INSTALLED WEBSOCKET SSH    │${NC}"
echo -e "${tyblue}└──────────────────────────────────────────┘${NC}"
fun_bar 'res4'

echo -e "${tyblue}┌──────────────────────────────────────────┐${NC}"
echo -e "${tyblue}│       PROCESS INSTALLED BACKUP MENU      │${NC}"
echo -e "${tyblue}└──────────────────────────────────────────┘${NC}"
fun_bar 'res5'

echo -e "${tyblue}┌──────────────────────────────────────────┐${NC}"
echo -e "${tyblue}│           PROCESS INSTALLED OHP          │${NC}"
echo -e "${tyblue}└──────────────────────────────────────────┘${NC}"
fun_bar 'res6'


echo -e "${tyblue}┌──────────────────────────────────────────┐${NC}"
echo -e "${tyblue}│           DOWNLOAD EXTRA MENU            │${NC}"
echo -e "${tyblue}└──────────────────────────────────────────┘${NC}"
fun_bar 'res7'

echo -e "${tyblue}┌──────────────────────────────────────────┐${NC}"
echo -e "${tyblue}│           DOWNLOAD SLOWDNS               │${NC}"
echo -e "${tyblue}└──────────────────────────────────────────┘${NC}"
fun_bar 'res8'

echo -e "${tyblue}┌──────────────────────────────────────────┐${NC}"
echo -e "${tyblue}│           DOWNLOAD UDP COSTUM            │${NC}"
echo -e "${tyblue}└──────────────────────────────────────────┘${NC}"
fun_bar 'res9'
}
function iinfo(){
domain=$(cat /etc/xray/domain)
TIMES="10"
CHATID="5557374381"
KEY="6646071651:AAEFShVjypTh_CMVGlvVi1BppU5zfExuKu0"
URL="https://api.telegram.org/bot$KEY/sendMessage"
ISP=$(cat /etc/xray/isp)
CITY=$(cat /etc/xray/city)
domain=$(cat /etc/xray/domain) 
TIME=$(date +'%Y-%m-%d %H:%M:%S')
RAMMS=$(free -m | awk 'NR==2 {print $2}')
MODEL2=$(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')
MYIP=$(curl -sS ipv4.icanhazip.com)
IZIN=$(curl -sS https://raw.githubusercontent.com/RMBL-VPN/permission/main/ipmini | grep $MYIP | awk '{print $3}' )
d1=$(date -d "$IZIN" +%s)
d2=$(date -d "$today" +%s)
EXP=$(( (d1 - d2) / 86400 ))

TEXT="
<code>◇━━━━━━━━━━━━━━◇</code>
<code> 🟢 AUTOSCRIPT PREMIUM</code>
<code>◇━━━━━━━━━━━━━━◇</code>
<code>NAME : </code><code>${author}</code>
<code>TIME : </code><code>${TIME} WIB</code>
<code>DOMAIN : </code><code>${domain}</code>
<code>IP : </code><code>${MYIP}</code>
<code>ISP : </code><code>${ISP} $CITY</code>
<code>OS LINUX : </code><code>${MODEL2}</code>
<code>RAM : </code><code>${RAMMS} MB</code>
<code>EXP SCRIPT : </code><code>$EXP Days</code>
<code>◇━━━━━━━━━━━━━━◇</code>
<i>Notification Scrip ...</i>
"'&reply_markup={"inline_keyboard":[[{"text":"🟢ᴏʀᴅᴇʀ","url":"https://t.me/sshrmblvpn"},{"text":"🟢ᴀᴅᴍɪɴ","url":"https://t.me/rmblvpn"}]]}'
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
clear
}

CEKIP
Casper3
cat> /root/.profile << END
if [ "$BASH" ]; then
if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi
fi
mesg n || true
clear
menu
END
chmod 644 /root/.profile
if [ -f "/root/log-install.txt" ]; then
rm /root/log-install.txt > /dev/null 2>&1
fi
if [ -f "/etc/afak.conf" ]; then
rm /etc/afak.conf > /dev/null 2>&1
fi
if [ ! -f "/etc/log-create-user.log" ]; then
echo "Log All Account " > /etc/log-create-user.log
fi
history -c
serverV=$( curl -sS https://raw.githubusercontent.com/RMBL-VPN/v/main/versi  )
echo $serverV > /opt/.ver
aureb=$(cat /home/re_otm)
b=11
if [ $aureb -gt $b ]
then
gg="PM"
else
gg="AM"
fi
cd
curl -sS ifconfig.me > /etc/myipvps
curl -s ipinfo.io/city?token=75082b4831f909 >> /etc/xray/city
curl -s ipinfo.io/org?token=75082b4831f909  | cut -d " " -f 2-10 >> /etc/xray/isp
rm /root/setup.sh >/dev/null 2>&1
rm /root/slhost.sh >/dev/null 2>&1
rm /root/ssh-vpn.sh >/dev/null 2>&1
rm /root/ins-xray.sh >/dev/null 2>&1
rm /root/insshws.sh >/dev/null 2>&1
rm /root/set-br.sh >/dev/null 2>&1
rm /root/ohp.sh >/dev/null 2>&1
rm /root/update.sh >/dev/null 2>&1
rm /root/slowdns.sh >/dev/null 2>&1
secs_to_human "$(($(date +%s) - ${start}))" | tee -a log-install.txt
sleep 3
echo  ""
cd
iinfo
rm -rf *
echo -e "${tyblue}┌────────────────────────────────────────────┐${NC}"
echo -e "${tyblue}│  Install SCRIPT SELESAI..                  │${NC}"
echo -e "${tyblue}└────────────────────────────────────────────┘${NC}"
echo  ""
sleep 1
echo -e "${tyblue}REBOOT${NC}"
shutdown -r nowy
