FROM centos:7
MAINTAINER matthew.a.nicholson@gmail.com
#Get ansible setup and ready to go
RUN yum -y localinstall http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el7.rf.x86_64.rpm &&\
    yum -y localinstall https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm &&\
    yum -y install ansible && yum -y update && yum clean all

#Thats all folks. 
