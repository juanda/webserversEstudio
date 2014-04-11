Vagrant.configure("2") do |config|
  config.vm.box       = 'precise64'
  config.vm.box_url   = 'http://files.vagrantup.com/precise64.box'
  config.vm.synced_folder ".", "/vagrant", disabled: true  

  config.vm.provider :virtualbox do |v|        
        v.customize [ "modifyvm", :id, "--memory", 1024 ]
        v.cpus = 2
  end

  config.vm.define "yaws_cgi" do |yaws_cgi|
    yaws_cgi.vm.network :private_network, ip: "192.168.33.10"
  end

  config.vm.define "yaws_fastcgi" do |yaws_fastcgi|
    yaws_fastcgi.vm.network :private_network, ip: "192.168.33.20"
  end
  
  config.vm.define "nginx_fastcgi" do |nginx_fastcgi|
    nginx_fastcgi.vm.network :private_network, ip: "192.168.33.30"
  end

  config.vm.define "apache_fastcgi" do |apache_fastcgi|
    apache_fastcgi.vm.network :private_network, ip: "192.168.33.40"
  end

  config.vm.define "apache_phpmodule" do |apache_phpmodule|
    apache_phpmodule.vm.network :private_network, ip: "192.168.33.50"
  end
  
end