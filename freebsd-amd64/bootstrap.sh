#!/bin/sh
sudo pkg update &&
    sudo pkg install -y gcc curl &&
    curl -LO http://downloads.dlang.org/releases/2.x/2.083.0/dmd.2.083.0.freebsd-64.tar.xz &&
    sudo pkg remove -y curl &&
    sudo pkg clean -y &&
    tar xzvf dmd.2.083.0.freebsd-64.tar.xz &&
    sudo cp dmd2/freebsd/bin64/dmd.conf /etc &&
    sudo cp dmd2/freebsd/lib64/* /usr/lib &&
    sudo sed -i -e 's/:path=\/sbin \/bin \/usr\/sbin \/usr\/bin \/usr\/local\/sbin \/usr\/local\/bin ~\/bin:\\/:path=\/sbin \/bin \/usr\/sbin \/usr\/bin \/usr\/local\/sbin \/usr\/local\/bin ~\/bin \/home\/vagrant\/dmd2\/freebsd\/bin64:\\/' /etc/login.conf &&
    sudo cap_mkdb /etc/login.conf
