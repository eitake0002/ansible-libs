# Description:
#   Add epel repository on CentOS6
function add-epel-repo-centos6()
{
  rpm -ivh http://ftp-srv2.kddilabs.jp/Linux/distributions/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm
}

# Description:
#   Add epel repository on CnetOS7
function add-epel-repo-centos7()
{
  yum install epel-release
}

# Description:
#   Install with yum.
#   Latest epel repository must be installed.
function install-ansible()
{
  yum -y install ansible
}
