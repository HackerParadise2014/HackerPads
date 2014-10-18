    # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Admin.create!(:email => 'test@test.com', :password => 'password', :password_confirmation => 'password')
Region.create(:name => 'South-East Asia')
Region.create(:name => 'Central America')
Location.create(:name => 'North-West Hanoi', :city => 'Hoi An', :ctry => 'VN', 
  :description => 'A thriving costal city, offers some of the best internet in South-East Asia.', 
  :best_flight_month => 'Never', :avg_daily_hrs_sun => 0, :region_id => Region.first, :avg_temp => 30,
  :low_season_startdt => Date.strptime("09/01/2009", "%m/%d/%Y"), 
  :low_season_enddt => Date.strptime("09/01/2009", "%m/%d/%Y"), 
  :high_season_startdt => Date.strptime("09/01/2009", "%m/%d/%Y"), 
  :high_season_enddt => Date.strptime("09/01/2009", "%m/%d/%Y"), 
  # :avg_internet_up => 1000.2, :avg_internet_down => 23000.45, :avg_cost_per_mb => 5.10
  :internet => '{"avg_internet_up" : 1000.2, "avg_internet_down" : 23000.45, "avg_cost_per_mb" : 5.10, "isps" : ["Time Warner","Comcast"]}',
  :monthly_cost => 1077.0 
) 