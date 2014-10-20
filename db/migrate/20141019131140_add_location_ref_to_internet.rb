class AddLocationRefToInternet < ActiveRecord::Migration
  def change
    add_reference :internets, :location, index: true
  end
end

