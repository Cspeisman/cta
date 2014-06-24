class AddMonthBeginning < ActiveRecord::Migration
  def change
    rename_column :bus_stops, :month_begin, :month_beginning
  end
end
