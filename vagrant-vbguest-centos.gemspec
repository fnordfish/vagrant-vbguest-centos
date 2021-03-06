# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-vbguest-centos/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-vbguest-centos"
  spec.version       = VagrantVbguestCentos::VERSION
  spec.authors       = ["Robert Schulze"]
  spec.email         = ["robert@dotless.de"]

  spec.summary       = %q{Extends vagrant-vbguest with an specific CentOS installer class.}
  spec.description   = <<-DESC
    This is an experimental extension to vagrant-vbguest.
    It might also serve as a template to write your own vagrant-vbguest extension.
  DESC
  spec.homepage      = "https://github.com/fnordfish/vagrant-vbguest-centos"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "vagrant-vbguest", "~> 0.12"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
