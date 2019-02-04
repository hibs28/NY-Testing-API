require 'spec_helper'
describe '' do 
  before (:all) do 
    @api_key = ENV['API_KEY']
    @postcodes_array = NYTimesAPI.new.generate.section_name_array(rand(1..15), @api_key)

  end
  it 'should' do
    p @postcodes_array
  end
end
