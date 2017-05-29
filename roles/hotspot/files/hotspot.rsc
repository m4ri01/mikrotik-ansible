
/ip hotspot profile add dns-name=coba.com hotspot-address=192.168.10.1 name=hsprof1
/ip pool add name=hs-pool-1 ranges=192.168.10.2-192.168.10.254
/ip dhcp-server add address-pool=hs-pool-1 disabled=no interface=ether1 lease-time=1h name=dhcp1
/ip hotspot add address-pool=hs-pool-1 disabled=no interface=ether1 name=hotspot1 profile=hsprof1
/ip dhcp-server network add address=192.168.10.0/24 comment="hotspot network" gateway=192.168.10.1
/ip firewall filter add action=passthrough chain=unused-hs-chain comment="place hotspot rules here" disabled=yes
/ip firewall nat add action=passthrough chain=unused-hs-chain comment="place hotspot rules here" disabled=yes
/ip firewall add action=masquerade chain=srcnat comment="masquerade hotspot network" src-address=192.168.10.0/24
/ip hotspot user add name=admin password=123
