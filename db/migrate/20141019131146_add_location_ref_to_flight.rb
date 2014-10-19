class AddLocationRefToFlight < ActiveRecord::Migration
  def change
    add_reference :flight, :location, index: true
  end
end

