Vagrant.configure("2") do |config|

  config.vm.box = "centos6_nginx_rails_passenger"
  config.vm.network :forwarded_port, guest: 80, host: 3000 
  config.vm.provision :shell, :path => "bootstrap.sh"

end
