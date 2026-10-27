# ip route add <new_ip_subnet> via <subnet_iface_ip> dev <subnet_iface>
ip route add 10.127.3.0/24 via 10.127.1.2 dev eth1
ip route add 10.127.4.0/24 via 10.127.2.2 dev eth2
iptables -t nat -A POSTROUTING -j MASQUERADE -s 10.127.0.0/16 -o eth0