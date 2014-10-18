class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string  :name
      t.string  :city
      t.string  :ctry, :limit => 2 # ISO country code (2 char)
      t.text    :description
      t.string  :map_link
      t.decimal :monthly_cost, :precision => 10, :scale => 2 # monetary decimal amounts only
      t.string  :best_flight_month
      t.date    :low_season_startdt
      t.date    :low_season_enddt
      t.date    :high_season_startdt
      t.date    :high_season_enddt
      t.decimal :avg_daily_hrs_sun, :precision => 3, :scale => 1
      t.integer :avg_temp
      t.text    :internet
      # t.decimal :avg_internet_up, :precision => 10, :scale => 2
      # t.decimal :avg_internet_down, :precision => 10, :scale => 2
      # t.decimal :avg_cost_per_mb, :precision => 10, :scale => 2 # monetary decimal amounts only
      t.timestamps
    end
  end
end
