yum -y install gcc bzip2 make kernel-devel-`uname -r`
yum -y install gcc-c++ zlib-devel openssl-devel readline-devel sqlite3-devel vim-enhanced
#yum -y update
#yum -y upgrade

yum -y install vim-enhanced redhat-lsb

# Purge crapware
yum -y erase wireless-tools gtk2 hicolor-icon-theme bitstream-vera-fonts aspell crash procmail
yum -y groupremove 'Mail Server' 'Dialup Networking Support'
