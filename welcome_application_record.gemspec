lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "welcome_application_record/version"

Gem::Specification.new do |spec|
  spec.name        = "welcome_application_record"
  spec.version     = WelcomeApplicationRecord::VERSION
  spec.date        = "2019-08-07"
  spec.summary     = "Welcome ApplicationRecord"
  spec.description = "A simple gem which convert to extend ApplicationRecord instead to directly extend ActiveRecord::Base"
  spec.authors     = ["Tai Tri Vo"]
  spec.email       = ["votaitri.hust@gmail.com"]
  spec.files       = ["lib/welcome_application_record.rb"]
  spec.executables << "welcome_application_record"
  spec.homepage    = "https://rubygems.org/gems/welcome_application_record"
  spec.license     = "MIT"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
