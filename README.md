# vagrant-dlang: Vagrant boxes for building and testing D binaries

# VAGRANT CLOUD

* https://app.vagrantup.com/mcandre/boxes/vagrant-dlang-centos-amd64
* https://app.vagrantup.com/mcandre/boxes/vagrant-dlang-centos-i386
* https://app.vagrantup.com/mcandre/boxes/vagrant-dlang-debian-amd64
* https://app.vagrantup.com/mcandre/boxes/vagrant-dlang-freebsd-amd64
* https://app.vagrantup.com/mcandre/boxes/vagrant-dlang-macos

# EXAMPLE

```console
$ cd debian-amd64/test
$ vagrant up
$ vagrant ssh -c "cd /vagrant && dmd hello.d && ./hello"
Hello World!
```

# RUNTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com) 2.2.2+
* The [VirtualBox](https://www.virtualbox.org) hypervisor provider

## Recommended

* [vagrant-rsync-back](https://github.com/smerrill/vagrant-rsync-back) assists in copying artifacts from the guest to the host
* [bundler](https://bundler.io) (for `rake`)

# BUILDTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com) 2.2.2+
* The [VirtualBox](https://www.virtualbox.org) hypervisor provider

# BUILD AND TEST BOXES

```console
$ rake boxes import test
```

# PUBLISH

```console
$ rake publish
```

# CLEAN

```console
$ rake clean
```
