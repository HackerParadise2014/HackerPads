Region.create(:name => 'South-East Asia')
Region.create(:name => 'Central America')
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
Lodging.create(:location_id => Location.first, :name => "Evil Test Hotel", :city => 'Hanoi', :lodging_type => "Hotel", :price_per_night => 10.00, :beds => 5, :bedrooms => 1, :capacity => 11)
Lodging.create(:location_id => Location.first, :name => "Nice Test Hotel", :city => 'Hanoi', :lodging_type => "Hotel", :price_per_night => 25.00, :beds => 4, :bedrooms => 4, :capacity => 5)