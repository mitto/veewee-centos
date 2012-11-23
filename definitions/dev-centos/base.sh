# Base install

sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

#cat > /etc/yum.repos.d/epel.repo << EOM
#[epel]
#name=epel
#baseurl=http://download.fedoraproject.org/pub/epel/6/\$basearch
#enabled=1
#gpgcheck=0
#EOM

#yum -y install gcc make gcc-c++ kernel-devel-`uname -r` zlib-devel openssl-devel readline-devel sqlite-devel perl wget
yum -y install kernel-devel

yum -y update
yum -y groupinstall "Development Tools"
yum -y install rpmdev-tools

yum -y install wget man vim ntp bind-utils telnet mlocate

rpm -ivh http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.2-2.el6.rf.x86_64.rpm
rpm -ivh http://ftp.riken.jp/Linux/fedora/epel/6/i386/epel-release-6-7.noarch.rpm
rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm

yum -y install htop multitail
