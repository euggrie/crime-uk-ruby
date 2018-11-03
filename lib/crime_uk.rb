require 'faraday'
require 'json'
require 'time'
# Main CrimeUk client module
#
# This library acts as a Ruby wrapper for the UK Police API.
# https://data.police.uk/docs/

module CrimeUk
  require_relative 'crime_uk/error'
  require_relative 'crime_uk/category'
  require_relative 'crime_uk/street_level'
  require_relative 'crime_uk/street_level_outcome'
  require_relative 'crime_uk/at_location'
  require_relative 'crime_uk/no_location'
  require_relative 'crime_uk/request/base'
  require_relative 'crime_uk/request/category'
  require_relative 'crime_uk/request/street_level'
  require_relative 'crime_uk/request/street_level_outcome'
  require_relative 'crime_uk/request/at_location'
  require_relative 'crime_uk/request/no_location'
  require_relative 'crime_uk/response'
  require_relative 'crime_uk/version'
end
