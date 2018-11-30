VERSION_DESCRIPTION = 'Source: https://github.com/mcandre/vagrant-dlang'
VERSION = '0.0.1'
PROVIDER = 'virtualbox'
ARCHITECTURES = ['amd64', 'i386']
BOX_NAMESPACE = 'mcandre'
BOX_PREFIX = 'vagrant-dlang'

BOX_BASENAME_DEBIAN_AMD64 = "#{BOX_PREFIX}-debian-amd64"
BOX_DEBIAN_AMD64 = "#{BOX_BASENAME_DEBIAN_AMD64}.box"
SHORT_DESCRIPTION_DEBIAN_AMD64 = 'a Vagrant box for building and testing D binaries for GNU/Linux (Debian) x86_64'

BOX_BASENAME_CENTOS_AMD64 = "#{BOX_PREFIX}-centos-amd64"
BOX_CENTOS_AMD64 = "#{BOX_BASENAME_CENTOS_AMD64}.box"
SHORT_DESCRIPTION_CENTOS_AMD64 = 'a Vagrant box for building and testing D binaries for GNU/Linux (RHEL) x86_64'

BOX_BASENAME_CENTOS_I386 = "#{BOX_PREFIX}-centos-i386"
BOX_CENTOS_I386 = "#{BOX_BASENAME_CENTOS_I386}.box"
SHORT_DESCRIPTION_CENTOS_I386 = 'a Vagrant box for building and testing D binaries for GNU/Linux (RHEL) x86'

BOX_BASENAME_FREEBSD_AMD64 = "#{BOX_PREFIX}-freebsd-amd64"
BOX_FREEBSD_AMD64 = "#{BOX_BASENAME_FREEBSD_AMD64}.box"
SHORT_DESCRIPTION_FREEBSD_AMD64 = 'a Vagrant box for building and testing D binaries for FreeBSD x86_64'

BOX_BASENAME_MACOS = "#{BOX_PREFIX}-macos"
BOX_MACOS = "#{BOX_BASENAME_MACOS}.box"
SHORT_DESCRIPTION_MACOS = 'a Vagrant box for building and testing D binaries for macOS'

task :default => 'test'

task :box_debian_amd64 => [
    "debian-amd64#{File::SEPARATOR}Vagrantfile",
    "debian-amd64#{File::SEPARATOR}bootstrap.sh",
    "debian-amd64#{File::SEPARATOR}export.Vagrantfile",
    :clean_box_debian_amd64
] do
    sh 'vagrant up',
        :chdir => 'debian-amd64'
    sh "vagrant package --output #{BOX_DEBIAN_AMD64} --vagrantfile export.Vagrantfile",
        :chdir => 'debian-amd64'
end

task :box_centos_amd64 => [
    "centos-amd64#{File::SEPARATOR}Vagrantfile",
    "centos-amd64#{File::SEPARATOR}bootstrap.sh",
    "centos-amd64#{File::SEPARATOR}export.Vagrantfile",
    :clean_box_centos_amd64
] do
    sh 'vagrant up',
        :chdir => 'centos-amd64'
    sh "vagrant package --output #{BOX_CENTOS_AMD64} --vagrantfile export.Vagrantfile",
        :chdir => 'centos-amd64'
end

task :box_centos_i386 => [
    "centos-i386#{File::SEPARATOR}Vagrantfile",
    "centos-i386#{File::SEPARATOR}bootstrap.sh",
    "centos-i386#{File::SEPARATOR}export.Vagrantfile",
    :clean_box_centos_i386
] do
    sh 'vagrant up',
        :chdir => 'centos-i386'
    sh "vagrant package --output #{BOX_CENTOS_I386} --vagrantfile export.Vagrantfile",
        :chdir => 'centos-i386'
end

task :box_freebsd_amd64 => [
    "freebsd-amd64#{File::SEPARATOR}Vagrantfile",
    "freebsd-amd64#{File::SEPARATOR}bootstrap.sh",
    "freebsd-amd64#{File::SEPARATOR}export.Vagrantfile",
    :clean_box_freebsd_amd64
] do
    sh 'vagrant up',
        :chdir => 'freebsd-amd64'
    sh "vagrant package --output #{BOX_FREEBSD_AMD64} --vagrantfile export.Vagrantfile",
        :chdir => 'freebsd-amd64'
end

task :box_macos => [
    "macos#{File::SEPARATOR}Vagrantfile",
    "macos#{File::SEPARATOR}bootstrap.sh",
    "macos#{File::SEPARATOR}export.Vagrantfile",
    :clean_box_macos
] do
    sh 'vagrant up',
        :chdir => 'macos'
    sh "vagrant package --output #{BOX_MACOS} --vagrantfile export.Vagrantfile",
        :chdir => 'macos'
end

task :boxes => [
    :box_debian_amd64,
    :box_centos_amd64,
    :box_centos_i386,
    :box_freebsd_amd64,
    :box_macos
] do
end

task :import_debian_amd64 => [] do
    sh "vagrant box add --force --name #{BOX_NAMESPACE}/#{BOX_BASENAME_DEBIAN_AMD64} #{BOX_DEBIAN_AMD64}",
        :chdir => 'debian-amd64'
end

task :import_centos_amd64 => [] do
    sh "vagrant box add --force --name #{BOX_NAMESPACE}/#{BOX_BASENAME_CENTOS_AMD64} #{BOX_CENTOS_AMD64}",
        :chdir => 'centos-amd64'
end

task :import_centos_i386 => [] do
    sh "vagrant box add --force --name #{BOX_NAMESPACE}/#{BOX_BASENAME_CENTOS_I386} #{BOX_CENTOS_I386}",
        :chdir => 'centos-i386'
end

task :import_freebsd_amd64 => [] do
    sh "vagrant box add --force --name #{BOX_NAMESPACE}/#{BOX_BASENAME_FREEBSD_AMD64} #{BOX_FREEBSD_AMD64}",
        :chdir => 'freebsd-amd64'
end

task :import_macos => [] do
    sh "vagrant box add --force --name #{BOX_NAMESPACE}/#{BOX_BASENAME_MACOS} #{BOX_MACOS}",
        :chdir => 'macos'
end

task :import => [
    :import_debian_amd64,
    :import_centos_amd64,
    :import_centos_i386,
    :import_freebsd_amd64,
    :import_macos
] do
end

task :test_debian_amd64 => [
    "debian-amd64#{File::SEPARATOR}test#{File::SEPARATOR}Vagrantfile",
    "debian-amd64#{File::SEPARATOR}test#{File::SEPARATOR}hello.d"
] do
    sh 'vagrant up',
        :chdir => "debian-amd64#{File::SEPARATOR}test"
    sh 'vagrant ssh -c "cd /vagrant && dmd hello.d && ./hello"',
        :chdir => "debian-amd64#{File::SEPARATOR}test"
    sh 'vagrant halt',
        :chdir => "debian-amd64#{File::SEPARATOR}test"
end

task :test_centos_amd64 => [
    "centos-amd64#{File::SEPARATOR}test#{File::SEPARATOR}Vagrantfile",
    "centos-amd64#{File::SEPARATOR}test#{File::SEPARATOR}hello.d"
] do
    sh 'vagrant up',
        :chdir => "centos-amd64#{File::SEPARATOR}test"
    sh 'vagrant ssh -c "cd /vagrant && dmd hello.d && ./hello"',
        :chdir => "centos-amd64#{File::SEPARATOR}test"
    sh 'vagrant halt',
        :chdir => "centos-amd64#{File::SEPARATOR}test"
end

task :test_centos_i386 => [
    "centos-i386#{File::SEPARATOR}test#{File::SEPARATOR}Vagrantfile",
    "centos-i386#{File::SEPARATOR}test#{File::SEPARATOR}hello.d"
] do
    sh 'vagrant up',
        :chdir => "centos-i386#{File::SEPARATOR}test"
    sh 'vagrant ssh -c "cd /vagrant && dmd hello.d && ./hello"',
        :chdir => "centos-i386#{File::SEPARATOR}test"
    sh 'vagrant halt',
        :chdir => "centos-i386#{File::SEPARATOR}test"
end

task :test_freebsd_amd64 => [
    "freebsd-amd64#{File::SEPARATOR}test#{File::SEPARATOR}Vagrantfile",
    "freebsd-amd64#{File::SEPARATOR}test#{File::SEPARATOR}hello.d"
] do
    sh 'vagrant up',
        :chdir => "freebsd-amd64#{File::SEPARATOR}test"
    sh 'vagrant ssh -c "cd /vagrant && dmd hello.d && ./hello"',
        :chdir => "freebsd-amd64#{File::SEPARATOR}test"
    sh 'vagrant halt',
        :chdir => "freebsd-amd64#{File::SEPARATOR}test"
end

task :test_macos => [
    "macos#{File::SEPARATOR}test#{File::SEPARATOR}Vagrantfile",
    "macos#{File::SEPARATOR}test#{File::SEPARATOR}hello.d"
] do
    sh 'vagrant up',
        :chdir => "macos#{File::SEPARATOR}test"
    sh 'vagrant ssh -c "cd /vagrant && dmd hello.d && ./hello"',
        :chdir => "macos#{File::SEPARATOR}test"
    sh 'vagrant halt',
        :chdir => "macos#{File::SEPARATOR}test"
end

task :test => [
    :test_debian_amd64,
    :test_centos_amd64,
    :test_centos_i386,
    :test_freebsd_amd64,
    :test_macos
] do
end

task :publish_debian_amd64 => [] do
    sh "vagrant cloud publish #{BOX_NAMESPACE}/#{BOX_BASENAME_DEBIAN_AMD64} --force --release --short-description \"#{SHORT_DESCRIPTION_DEBIAN_AMD64}\" --version-description \"#{VERSION_DESCRIPTION}\" #{VERSION} #{PROVIDER} #{BOX_DEBIAN_AMD64}",
        :chdir => 'debian-amd64'
end

task :publish_centos_amd64 => [] do
    sh "vagrant cloud publish #{BOX_NAMESPACE}/#{BOX_BASENAME_CENTOS_AMD64} --force --release --short-description \"#{SHORT_DESCRIPTION_CENTOS_AMD64}\" --version-description \"#{VERSION_DESCRIPTION}\" #{VERSION} #{PROVIDER} #{BOX_CENTOS_AMD64}",
        :chdir => 'centos-amd64'
end

task :publish_centos_i386 => [] do
    sh "vagrant cloud publish #{BOX_NAMESPACE}/#{BOX_BASENAME_CENTOS_I386} --force --release --short-description \"#{SHORT_DESCRIPTION_CENTOS_AMD64}\" --version-description \"#{VERSION_DESCRIPTION}\" #{VERSION} #{PROVIDER} #{BOX_CENTOS_I386}",
        :chdir => 'centos-i386'
end

task :publish_freebsd_amd64 => [] do
    sh "vagrant cloud publish #{BOX_NAMESPACE}/#{BOX_BASENAME_FREEBSD_AMD64} --force --release --short-description \"#{SHORT_DESCRIPTION_FREEBSD_AMD64}\" --version-description \"#{VERSION_DESCRIPTION}\" #{VERSION} #{PROVIDER} #{BOX_FREEBSD_AMD64}",
        :chdir => 'freebsd-amd64'
end

task :publish_macos => [] do
    sh "vagrant cloud publish #{BOX_NAMESPACE}/#{BOX_BASENAME_MACOS} --force --release --short-description \"#{SHORT_DESCRIPTION_MACOS}\" --version-description \"#{VERSION_DESCRIPTION}\" #{VERSION} #{PROVIDER} #{BOX_MACOS}",
        :chdir => 'macos'
end

task :publish => [
    :publish_debian_amd64,
    :publish_centos_amd64,
    :publish_centos_i386,
    :publish_freebsd_amd64,
    :publish_macos
] do
end

task :clean_box_debian_amd64 => [] do
    Dir.glob("debian-amd64#{File::SEPARATOR}*.box").each { |path| File.delete path }
end

task :clean_debian_amd64 => [:clean_box_debian_amd64] do
    begin
        sh 'vagrant destroy -f',
            :chdir => 'debian-amd64'
    rescue
    end

    begin
        sh 'vagrant destroy -f',
            :chdir => "debian-amd64#{File::SEPARATOR}test"
    rescue
    end

    begin
        Dir.glob("debian-amd64#{File::SEPARATOR}**#{File::SEPARATOR}.vagrant").each { |path| FileUtils.rm_r path }
    rescue
    end
end

task :clean_box_centos_amd64 => [] do
    Dir.glob("centos-amd64#{File::SEPARATOR}*.box").each { |path| File.delete path }
end

task :clean_centos_amd64 => [:clean_box_centos_amd64] do
    begin
        sh 'vagrant destroy -f',
            :chdir => 'centos-amd64'
    rescue
    end

    begin
        sh 'vagrant destroy -f',
            :chdir => "centos-amd64#{File::SEPARATOR}test"
    rescue
    end

    begin
        Dir.glob("centos-amd64#{File::SEPARATOR}**#{File::SEPARATOR}.vagrant").each { |path| FileUtils.rm_r path }
    rescue
    end
end

task :clean_box_centos_i386 => [] do
    Dir.glob("centos-i386#{File::SEPARATOR}*.box").each { |path| File.delete path }
end

task :clean_centos_i386 => [:clean_box_centos_i386] do
    begin
        sh 'vagrant destroy -f',
            :chdir => 'centos-i386'
    rescue
    end

    begin
        sh 'vagrant destroy -f',
            :chdir => "centos-i386#{File::SEPARATOR}test"
    rescue
    end

    begin
        Dir.glob("centos-i386#{File::SEPARATOR}**#{File::SEPARATOR}.vagrant").each { |path| FileUtils.rm_r path }
    rescue
    end
end

task :clean_box_freebsd_amd64 => [] do
    Dir.glob("freebsd-amd64#{File::SEPARATOR}*.box").each { |path| File.delete path }
end

task :clean_freebsd_amd64 => [:clean_box_freebsd_amd64] do
    begin
        sh 'vagrant destroy -f',
            :chdir => 'freebsd-amd64'
    rescue
    end

    begin
        sh 'vagrant destroy -f',
            :chdir => "freebsd-amd64#{File::SEPARATOR}test"
    rescue
    end

    begin
        Dir.glob("freebsd-amd64#{File::SEPARATOR}**#{File::SEPARATOR}.vagrant").each { |path| FileUtils.rm_r path }
    rescue
    end
end

task :clean_box_macos => [] do
    Dir.glob("macos#{File::SEPARATOR}*.box").each { |path| File.delete path }
end

task :clean_macos => [:clean_box_macos] do
    begin
        sh 'vagrant destroy -f',
            :chdir => 'macos'
    rescue
    end

    begin
        sh 'vagrant destroy -f',
            :chdir => "macos#{File::SEPARATOR}test"
    rescue
    end

    begin
        Dir.glob("macos#{File::SEPARATOR}**#{File::SEPARATOR}.vagrant").each { |path| FileUtils.rm_r path }
    rescue
    end
end

task :clean => [
    :clean_debian_amd64,
    :clean_centos_amd64,
    :clean_centos_i386,
    :clean_freebsd_amd64,
    :clean_macos
] do
end
