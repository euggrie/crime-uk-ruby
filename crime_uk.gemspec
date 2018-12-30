require_relative 'lib/crime_uk/version'

Gem::Specification.new do |gem|
  gem.name        = 'crime-uk-ruby'
  gem.version     = CrimeUk::VERSION
  gem.date        = '2018-11-03'
  gem.summary     = 'crime_uk'
  gem.description = 'Ruby API wrapper for UK Police data.'
  gem.authors     = ['Eugenia Grieff']
  gem.email       = 'euggrie@gmail.com'
  gem.files       = `git ls-files`.split("\n")
  gem.homepage    = 'https://github.com/euggrie/crime-uk-ruby'
  gem.license     = 'MIT'

  gem.required_ruby_version = '> 2.5'

  # Runtime Dependencies
  gem.add_runtime_dependency 'faraday', '~> 0.15'

  # Development Dependencies
  gem.add_development_dependency 'coveralls', '~> 0.8'
  gem.add_development_dependency 'pry',       '~> 0.11'
  gem.add_development_dependency 'rake',      '~> 12.3'
  gem.add_development_dependency 'rspec',     '~> 3.8'
  gem.add_development_dependency 'vcr',       '~> 4.0'
  gem.add_development_dependency 'webmock',   '~> 3.8'
end
