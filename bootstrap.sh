yum -y update

#RVM DEPS

wget \
	ftp://rpmfind.net/linux/dag/redhat/el6/en/i386/dag/RPMS/libyaml-devel-0.1.4-1.el6.rf.i686.rpm \
	ftp://rpmfind.net/linux/dag/redhat/el6/en/i386/dag/RPMS/libyaml-0.1.4-1.el6.rf.i686.rpm
yum -y install  \
	patch \
	gcc \
	gcc-c++ \
	git \
	install \
	libyaml-devel \
	libffi-devel \
	autoconf \
	automake \
	libtool \
	bison \
	libxml2-devel \
	libxslt-devel || { echo 'package install unsuccessful, exiting...' 1>&2 ; exit 1 }

#RVM

\curl -L https://get.rvm.io | bash -s stable --ruby

rvm install 1.9.3
rvm use 1.9.3 --default

#spree deps

yum -y install ImageMagick


