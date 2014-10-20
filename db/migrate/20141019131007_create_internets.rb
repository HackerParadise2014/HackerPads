class CreateInternets < ActiveRecord::Migration
  def change
    create_table :internets do |t|
      t.string      :ISP_name
      t.string      :data_type #mobile vs internet
      t.integer     :down_speed
      t.integer     :up_speed
      t.integer     :cost_per_mb
      t.timestamps
    end
  end
end
