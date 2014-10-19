class CreateLodgings < ActiveRecord::Migration

  def change
    create_table :lodgings do |t|
      t.string      :name
      t.string      :city
      t.string      :lodging_type
      t.integer     :beds
      t.integer     :bedrooms
      t.integer     :capacity
      t.decimal     :price_per_night, :precision => 7, :scale => 2
      t.boolean     :warning_flag, :default => false
      t.timestamps
    end
  end
end
