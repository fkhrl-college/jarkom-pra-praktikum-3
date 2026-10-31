#!/bin/sh

echo "nameserver 8.8.8.8" > /etc/resolv.conf
echo "OK"

apk update
apk add kea-dhcp4
cat <<'EOF'> /etc/kea/kea-dhcp4.conf
{
  "Dhcp4": {
    "interfaces-config": {
      "interfaces": ["eth0"]
    },
    "lease-database": {
      "type": "memfile",
      "persist": true,
      "name": "/var/lib/kea/kea-leases4.csv"
    },
    "valid-lifetime": 3600,
    "max-valid-lifetime": 7200,
    "subnet4": [
      {
        "id": 1,
        "subnet": "10.127.4.0/24",
        "pools": [
          { "pool": "10.127.4.50 - 10.127.4.60" }
        ],
        "option-data": [
          { "name": "routers", "data": "10.127.4.1" },
          { "name": "domain-name-servers", "data": "8.8.8.8" }
        ],
        "reservations": [
          { "hw-address": "02:42:48:c5:8e:00", "ip-address": "10.127.4.15" }
        ]
      }
    ]
  }
}
EOF
mkdir -p /var/lib/kea /run/kea
echo "run kea using: kea-dhcp4 -d -c /etc/kea/kea-dhcp4.conf"