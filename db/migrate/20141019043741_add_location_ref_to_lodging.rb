class AddLocationRefToLodging < ActiveRecord::Migration
  def change
    add_reference :lodgings, :location, index: true
  end
end
