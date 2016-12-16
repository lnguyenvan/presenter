# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

version = File.read(File.expand_path("../RUBYANH_PRESENTER_VERSION", __FILE__)).strip

Gem::Specification.new do |spec|
  spec.platform      = Gem::Platform::RUBY
  spec.name          = "rubyanh-presenter"
  spec.version       = version
  spec.summary       = "Simple view presenters for your Rails application."
  spec.description   = "Rubyanh Presenter is an useful way to perform the view related logic clearly instead of hard-coding the logic into the view or storing the logic in the model.."

  spec.required_ruby_version     = ">= 2.2.2"
  spec.required_rubygems_version = ">= 1.8.11"

  spec.license       = "MIT"

  spec.authors       = ["Giang Thai Cuong"]
  spec.email         = ["thaicuong.giang@gmail.com"]
  spec.homepage      = "https://github.com/rubyanh/presenter"


  spec.files         = ["README.md"]

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
