# ip route add <new_ip> via <gateway_ip> dev <gateway_iface>
ip route add 10.127.1.0/24 via 10.127.2.1 dev eth0
ip route add 10.127.3.0/24 via 10.127.2.1 dev eth0
echo "nameserver 8.8.8.8" > /etc/resolv.conf