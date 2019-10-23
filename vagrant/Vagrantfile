# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.define "web" do |config|
    config.vm.box = "bento/ubuntu-16.04"
    config.vm.hostname = "web"
    config.ssh.forward_agent = true
    config.vm.network "private_network", ip: "192.168.33.10"

    # NFS Share Solution 1
    config.vm.synced_folder ".", "/vagrant", type: "nfs"

    # NFS Share Solution 2
    config.vm.synced_folder ".", "/vagrant",
      nfs: true,
      # insecure = > 1024 ports (mac)
      mount_options: ['rw', 'no_subtree_check','async', 'insecure', 'actimeo=3', 'no_root_squash', 'crossmnt']

    config.nfs.map_uid = 1000 # 'anonuid=1000'
    config.nfs.map_gid = 1000 # 'anongid=1000'

    # will only apply when used
    config.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--name", "projectname-dev"]  # example
      vb.customize ["modifyvm", :id, "--cpus", 2]
      vb.customize ["modifyvm", :id, "--memory", 2048]
      vb.customize ["modifyvm", :id, "--cableconnected1", "on"] # workaround for ssh connection timeout issues
    end

    # will only apply when used
    config.vm.provider "vmware_fusion" do |v|
      v.vmx["memsize"] = "2048"
      v.vmx["numvcpus"] = "2"
    end
  end

  config.vm.provision "file", source: "~/.gitconfig", destination: ".gitconfig"
  config.vm.provision "shell", path: 'install.sh'
end
