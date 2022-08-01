net add vlan 10 ip address 10.1.1.254/24
net add vlan 20 ip address 10.0.0.254/24

# VXLAN interface for L3VNI
net add vlan 50
net add vxlan vni-1020 vxlan id 1020
net add vxlan vni-1020 vxlan local-tunnelip 1.1.1.1
net add vxlan vni-1020 bridge access 50

# Tenant VRF
net add vrf TEN1 vni 1020
net add vlan 50 vrf TEN1
net add vlan 10 vrf TEN1
net add vlan 20 vrf TEN1

net pending
net commit
