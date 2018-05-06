iptables -4 -A ufw-user-input  -pudp -s 192.168.1.83/32 -d 192.168.1.75/32 -jACCEPT
iptables -4 -A ufw-user-input  -pudp -s 212.27.38.253/32 -d 192.168.1.75/32 -jACCEPT
iptables -4 -A ufw-user-input  -pudp -d 228.67.43.91/32 -s 192.168.1.75/32 -jACCEPT


## -- pour supprimer 
## iptables  -F ufw-user-input

