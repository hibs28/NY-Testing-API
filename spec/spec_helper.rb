require 'rspec'
require 'dotenv'
require_relative '../lib/Generator/RandomSection'
require_relative '../lib/NYTimesAPI'
Dotenv.load('.env')

RSpec.configure do |config|
  config.formatter = :documentation
  config.color = true
end