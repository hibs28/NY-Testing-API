require 'httparty'
require 'json'

class RandomSection
  include HTTParty
  base_uri 'https://api.nytimes.com/svc/news/v3/'

  def section_name_array(number_of_sections, api_key)
    # return array with specified number of postcodes inside 
    array = []
    number_of_sections.times{|i|array << generate_section_name_array(i, api_key)}
    array
  end

  def generate_section_name_array(i, api_key)
    json_result = JSON.parse(self.class.get("/content/section-list.json?api-key=#{api_key}").body)
    random_postcode = json_result['results'][i]['section']
  end

end
