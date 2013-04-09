# Spree-Example

This example project is two-fold(or more possibly)
	* a ready to go base spree-container for development.
	* to test a local vagrant environment.

## Local Development Summary:

Vagrant uses virtualization to isolate and reuse a programming environment.  If
developers are collaborating on a project it allows them to ensure all have a
consistent baseline environment, thus issues with software dependency
specifically, additionally this allows you to avoid installing/unistalling webserver
software on your desktop machine as all of it is isolated to the vm.

The vagrant box (centos6_nginx_rails_passenger) in the spree-example project is
a virtual box vm webserver equipped with nginx and passenger to serve up
the spree rails app.  This is the same environment currently used on our linode
dev server, so if it works in the vagrant vm on your local machine, it is
highly likely it will work out of the box when deployed on the server. 

## Setting up the Environment

clone the git repo:
```shell
	git clone https://github.com/ginlane/spree-example.git
```
[get vagrant] (http://docs.vagrantup.com/v2/installation/index.html)
[acquaint yourself with the basics] (http://docs.vagrantup.com/v2/getting-started/index.html)

add the vagrant box( the box is 680M so it will take a bit):
```shell
vagrant box add centos6_nginx_rails_passenger http://download.ginlanelabs.com/centos6_nginx_rails_passenger.box
```

boot the vagrant box:
```shell
vagrant up
```

add 'spree.local' entry to hosts file:
```shell
127.0.0.1 localhost localhost.localdomain spree.local' to /etc/hosts on your machine
```

now point your browser to [spree.local:3000] (http://spree.local:3000) 
and you should see the spree server, if all is well there shouldn't be
any other configuration than that.

## Some notes on the vagrant Environment


vagrant mounts the project folder from the host into /vagrant on the virtual
machine, so you can edit the files same way as normal and push to git as usual.

use `vagrant ssh` to ssh into virtual

## Spree

[spree] (http://spreecommerce.com)
[spree-api] (http://api.spreecommerce.com)








