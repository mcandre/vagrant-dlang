Vagrant.configure("2") do |config|
    config.ssh.shell = "/bin/sh"
    config.vm.synced_folder ".", "/vagrant", type: "rsync"

    config.vm.provider "virtualbox" do |v|
        v.customize ["modifyvm", :id, "--memory", "2048"]
    end
end
