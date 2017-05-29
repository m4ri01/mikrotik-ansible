/ip pool add name=dhcp_pool0 ranges=192.168.10.2-192.168.10.100
/ip dhcp-server add address-pool=dhcp_pool0 disabled=no interface=ether1 name=dhcp1
/ip dhcp-server network add address=192.168.10.0/24 dns-server=8.8.8.8,8.8.4.4 gateway=192.168.10.1
