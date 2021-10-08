for i in $(host "$1" | grep 'has address' | awk '{print $4}'); do 
	ufw reject out from any to $i
done
for i in $(host "$1" | grep 'has IPv6 address' | awk '{print $5}'); do
	ufw reject out from any to $i
done
