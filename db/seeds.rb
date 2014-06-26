# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
CSV.read("db/cta.csv", headers: true).each_with_index do |row, i|
  if i >= 1 || row.to_hash == nil
    row = row.to_hash
    if !row['routes'].nil?
      if row["routes"].include?(',')
        row["routes"].split(',').each do |route|
          row["routes"] = route
          BusStop.create(row)
         end
      else
        BusStop.create(row)
      end
    end
  end
end
puts "should be good"