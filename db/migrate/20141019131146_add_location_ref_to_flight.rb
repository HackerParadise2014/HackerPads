class AddLocationRefToFlight < ActiveRecord::Migration
  def change
    add_reference :flights, :location, index: true
  end
end

