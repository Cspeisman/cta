class CreateBusStops < ActiveRecord::Migration
  def change
    create_table :bus_stops do |t|
      t.integer :stop_id
      t.string :cross_street
      t.integer :routes
      t.float :boardings
      t.float :alightings
      t.timestamp :month_begin
      t.string :daytype
      t.string :location

      t.timestamps
    end
  end
end
