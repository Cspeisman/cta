class AddIndexToLocation < ActiveRecord::Migration
  def change
    add_index :bus_stops, :location
  end
end
