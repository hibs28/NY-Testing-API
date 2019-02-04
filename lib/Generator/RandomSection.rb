require 'httparty'
class RandomSection
  include HTTParty
  base_uri 'https://api.nytimes.com/svc/news/v3/'

  def section_name_array(number_of_sections)
    # return array with specified number of postcodes inside 
    array = []
    number_of_sections.times{|i|array << generate_random_postcode(i)}
    array
  end

  def generate_section_name_array(i)
    json_result = JSON.parse(self.class.get("/content/section-list.json?api-key=#{@api_key}").body)
    random_postcode = json_result['results'][i]['section']
  end

end
