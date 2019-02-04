require_relative './Generator/RandomSection'
class NYTimesAPI
  # def times_wire_service
  #   TimesWireService.new
  # end

  def generate
    RandomSection.new
  end 
end