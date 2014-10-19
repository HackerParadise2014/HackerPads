Region.create(:name => 'South-East Asia')
Region.create(:name => 'Central America')
# Setup Hanoi location
Location.create(:name => 'North-West Hanoi', :city => 'Hoi An', :ctry => 'VN', 
  :description => 'A thriving costal city, offers some of the best internet in South-East Asia.', 
  :best_flight_month => 'Never', :avg_daily_hrs_sun => 0, :region_id => Region.first, :avg_temp => 30,
  :low_season_startdt => Date.strptime("09/01/2009", "%m/%d/%Y"), 
  :low_season_enddt => Date.strptime("09/01/2009", "%m/%d/%Y"), 
  :high_season_startdt => Date.strptime("09/01/2009", "%m/%d/%Y"), 
  :high_season_enddt => Date.strptime("09/01/2009", "%m/%d/%Y"), 
  :internet => '{"avg_internet_up" : 1000.2, "avg_internet_down" : 23000.45, "avg_cost_per_mb" : 5.10, "isps" : ["Time Warner","Comcast"]}',
  :monthly_cost => 1077.0 
) 
# generate Lodgings for Hanoi
Lodging.create(:location_id => Location.first, :name => "Evil Test Hotel", :city => 'Hanoi', :lodging_type => "Hotel", :price_per_night => 10.00, :beds => 5, :bedrooms => 1, :capacity => 11)
Lodging.create(:location_id => Location.first, :name => "Nice Test Hotel", :city => 'Hanoi', :lodging_type => "Hotel", :price_per_night => 25.00, :beds => 4, :bedrooms => 4, :capacity => 5)
# generate ISPs for Hanoi
Internet.create(:location_id => Location.first, :ISP_name => "Good ISP Co", :data_type => "Internet", :down_speed => 25887, :up_speed => 4880, :cost_per_mb => null)
Internet.create(:location_id => Location.first, :ISP_name => "Bad ISP Co", :data_type => "Internet", :down_speed => 11352, :up_speed => 1223, :cost_per_mb => null)
# generate flights into HAN
Flight.create(:location_id => Location.first, :departure_code => "JFK", :arrival_code => "HAN", :best_price => 1233, :avg_price => 1421, :best_travel_month => "October")
Flight.create(:location_id => Location.first, :departure_code => "EWR", :arrival_code => "HAN", :best_price => 1476, :avg_price => 1623, :best_travel_month => "October")
Flight.create(:location_id => Location.first, :departure_code => "LGA", :arrival_code => "HAN", :best_price => 1481, :avg_price => 1739, :best_travel_month => "October")
Flight.create(:location_id => Location.first, :departure_code => "ATL", :arrival_code => "HAN", :best_price => 1170, :avg_price => 1324, :best_travel_month => "January")
