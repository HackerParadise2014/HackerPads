class Location < ActiveRecord::Base
  belongs_to :region
  before_create :generate_map_link

  def generate_map_link
    coord = Geocoder.coordinates("#{city}, #{ctry}")
    self.map_link = "http://google.com/maps/@#{coord[0]},#{coord[1]},13z/"
  end

end
