#test/test_helper.rb
require './lib/crime_uk'
require 'vcr'
require 'pry'
require 'coveralls'
Coveralls.wear!

VCR.configure do |c|
  c.cassette_library_dir = "test/fixtures"
  c.hook_into :webmock
end
