begin
  require "vagrant-vbguest"
rescue LoadError
  raise "This Vagrant plugin requires the vagrant-vbguest plugin."
end

require "vagrant-vbguest-centos/version"
require "vagrant-vbguest-centos/installer"

module VagrantVbguestCentos
  class Plugin < Vagrant.plugin("2")

    name "vagrant-vbguest-centos"
    description "Extends vagrant-vbguest with an specific CentOS installer class."
  end
end
