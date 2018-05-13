case "$1" in 
  start)
	echo "Ajout des autorisations tele"
	iptables -4 -A ufw-user-input  -pudp -s 192.168.1.83/32 -d 192.168.1.75/32 -jACCEPT
	iptables -4 -A ufw-user-input  -pudp -s 212.27.38.253/32 -d 192.168.1.75/32 -jACCEPT
	iptables -4 -A ufw-user-input  -pudp -d 228.67.43.91/32 -s 192.168.1.75/32 -jACCEPT
	exit $error
	;;

  stop)
	echo "Suppression des autorisations tele"
	iptables  -F ufw-user-input
	exit $error
	;;
  *)
        echo "Choisir entre start et stop"
	;;
esac

