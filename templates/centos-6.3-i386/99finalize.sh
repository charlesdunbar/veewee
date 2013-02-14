
# Clean up package data
yum -y clean all

date > /home/vagrant/vagrant_box_build_time


#Ensure mysql starts on boot
chkconfig mysqld on
echo 'Starting MySQL'
service mysqld start
echo 'Waiting for startup'
sleep 10
mysqladmin -u root password console

# Disable Firewall
iptables -F
service iptables save

# Remove crap
yum -y groupremove "Graphical Administration Tools" "Japanese Support" "Korean Support"
yum -y remove b43-fwcutter b43-openfwwf cups-libs iwl-* mesa-* qt* xorg-* 

# Zero out the free space to save space in the final image:
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
exit
