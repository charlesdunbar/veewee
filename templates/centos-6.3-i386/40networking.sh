# set static dns resolution
echo > /etc/dhclient-enter-hooks <<-EOF
#!/bin/sh
make_resolv_conf(){ : }
EOF

chmod a+x /etc/dhcp/dhclient-enter-hooks.d/resolv
echo "nameserver 8.8.8.8" > /etc/resolv.conf

# Tweak sshd to prevent DNS resolution (speed up logins)
echo 'UseDNS no' >> /etc/ssh/sshd_config
