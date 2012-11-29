# Base install

sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

yum -y install zlib-devel openssl-devel readline-devel sqlite-devel bzip2-devel kernel-devel

yum -y update
yum -y groupinstall "Development Tools"

rpm -ivh http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.2-2.el6.rf.x86_64.rpm
rpm -ivh http://ftp.riken.jp/Linux/fedora/epel/6/i386/epel-release-6-7.noarch.rpm
rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm

yum -y install htop multitail perl wget man vim ntp bind-utils telnet mlocate rpmdevtools
