lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bank_exchange_api/version'

Gem::Specification.new do |spec|
  spec.name          = 'bank_exchange_api'
  spec.version       = BankExchangeApi::VERSION
  spec.authors       = ['Aliaksandr Shylau']
  spec.email         = ['alex.shilov.by@gmail.com']

  spec.summary       = 'BankExchange official API client'
  spec.description   = 'Rates for every world currency from 160+ Central Banks.'
  spec.homepage      = 'https://github.com/BankExchange/bank_exchange_ruby_api'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'vcr'
  spec.add_development_dependency 'dotenv'
end
