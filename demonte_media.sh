var=$(id -u)

if [ $(id -u) != '0' ]; then 
	echo "Vous devez etre  ROOT et vous etes " $var
	exit 1; 
fi
case "$1" in
	demonte|down)
		cd /media/; umount Data01 Data02 Data03 DataLivres Datas DataTravail Films  ; cd /home/apprenti/
 		;;
	monte|up)
		mount -a
	;;
	*)
		echo "Utilisez monte ou up  pour restaurer les volumes " 
		echo "ou demonte ou down pour demonter les volumes dans media sauf Stocks" 
	;;
esac

exit 0
