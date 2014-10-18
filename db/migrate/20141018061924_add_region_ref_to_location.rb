class AddRegionRefToLocation < ActiveRecord::Migration
  def change
    add_reference :locations, :region, index: true
  end
end
