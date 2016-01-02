Vagrant.configure("2") do |config|
  config.vm.box = 'ubuntu/trusty64'
  config.vm.provider "virtualbox" do |v|
    v.cpus = 4
    v.memory = 2048
  end

  config.vm.synced_folder ".", "/vagrant", type: "nfs"

  config.vm.provision "shell", path: "vagrant/install.sh"

  config.bindfs.bind_folder "/vagrant", "/vagrant"
end
