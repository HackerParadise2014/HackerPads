class AddLocationRefToInternet < ActiveRecord::Migration
  def change
    add_reference :internet, :location, index: true
  end
end

