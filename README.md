# vagrant-dlang: Vagrant boxes with D compiler + dub

# VAGRANT CLOUD

https://app.vagrantup.com/boxes/search?utf8=✓&q=mcandre%2Fdlang

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
