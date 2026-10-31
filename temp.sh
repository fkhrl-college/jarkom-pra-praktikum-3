ip tcp_metrics flush
sysctl -w net.ipv4.tcp_no_metrics_save=1
sysctl -w net.ipv4.tcp_congestion_control=cubic
sysctl net.ipv4.tcp_congestion_control