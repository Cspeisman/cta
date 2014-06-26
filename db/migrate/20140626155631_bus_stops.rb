class BusStops < ActiveRecord::Migration
  def change
    create_table :bus_stops do |t|
      t.integer :stop_id
      t.string  :on_street
      t.string :cross_street
      t.string :routes
      t.float :boardings
      t.float :alightings
      t.timestamp :month_beginning
      t.string :daytype
      t.string :location
    end
  end
end
