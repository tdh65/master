passwd -w 4 -x 32 apprenti
passwd -w 4 -x 32 root
usermod -g 100 apprenti 
apt update -y ; apt upgrade -y ; apt install tcpspy ufw chkrootkit gufw icedove thunderbird firmware-linux-nonfree firmware-linux-free  -y ; ufw enable 
