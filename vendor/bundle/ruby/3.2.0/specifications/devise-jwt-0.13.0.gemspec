# -*- encoding: utf-8 -*-
# stub: devise-jwt 0.13.0 ruby lib

Gem::Specification.new do |s|
  s.name = "devise-jwt".freeze
  s.version = "0.13.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Marc Busqu\u00E9".freeze]
  s.bindir = "exe".freeze
  s.date = "2026-01-13"
  s.description = "JWT authentication for devise with configurable token revocation strategies".freeze
  s.email = ["marc@lamarciana.com".freeze]
  s.homepage = "https://github.com/waiting-for-dev/devise-jwt".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.4.20".freeze
  s.summary = "JWT authentication for devise".freeze

  s.installed_by_version = "3.4.20" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<devise>.freeze, [">= 4.0.0", "< 6.0.0"])
  s.add_runtime_dependency(%q<warden-jwt_auth>.freeze, ["~> 0.10"])
  s.add_development_dependency(%q<bundler>.freeze, ["> 1"])
  s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
  s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
  s.add_development_dependency(%q<rails>.freeze, [">= 0"])
  s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
  s.add_development_dependency(%q<rspec-rails>.freeze, [">= 0"])
  s.add_development_dependency(%q<rubocop>.freeze, [">= 0"])
  s.add_development_dependency(%q<rubocop-rspec>.freeze, [">= 0"])
  s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
  s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, [">= 0"])
end
