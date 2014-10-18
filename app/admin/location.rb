ActiveAdmin.register Location do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  # setting up strong parameters
  permit_params :region_id, :name, :city, :ctry, :description, :map_link, :monthly_cost, 
                :best_flight_month, :avg_daily_hrs_sun, :avg_temp, 
                :low_season_startdt, :low_season_enddt, :high_season_startdt, :high_season_enddt, 
                :avg_cost_per_mb, :avg_internet_up, :avg_internet_down

end