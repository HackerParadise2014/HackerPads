class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string      :departure_code
      t.string      :arrival_code
      t.integer     :best_price
      t.integer     :avg_price
      t.string      :best_travel_month
      t.timestamps
    end
  end
end
