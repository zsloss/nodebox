Vagrant.configure(2) do |config|

	config.vm.box = "ubuntu/trusty64"
	config.vm.provision :shell, privileged: false, path: "bootstrap.sh"
	config.ssh.insert_key = false
	config.vm.network :forwarded_port, host: 8080, guest: 8080

end

