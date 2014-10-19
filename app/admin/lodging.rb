ActiveAdmin.register Lodging do


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
  permit_params :location_id, :name, :city, :lodging_type, :beds, :bedrooms, 
                :capacity, :price_per_night
                
end