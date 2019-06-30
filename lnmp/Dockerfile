FROM centos:latest

# 更新yum、yum源 并安装工具
RUN yum -y install wget screen vim \
    && wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo \
    && wget -O /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo \
    && yum clean all \
    && yum makecache \
    && yum -y update \
    && wget http://soft.vpser.net/lnmp/lnmp1.6.tar.gz -cO lnmp1.6.tar.gz && tar zxf lnmp1.6.tar.gz && cd lnmp1.6 && LNMP_Auto="y" DBSelect="2" DB_Root_Password="root" InstallInnodb="y" PHPSelect="9" SelectMalloc="1" ./install.sh lnmp

# 开放 80、3306 端口
EXPOSE 80 3306