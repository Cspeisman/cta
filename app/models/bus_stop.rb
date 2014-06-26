class BusStop < ActiveRecord::Base
  self.primary_key = 'stop_id'

  def self.get_route_stops_num
    group('routes').count.sort_by{|k , v| v}.reverse
  end

  def self.popular_stops
    # find_by_sql("select *, count(*) as C from bus_stops group by location having count(*) > 1 order by C desc limit 20")
    select("*, count(*) as stop_count").group('location having count(*) > 1').order('stop_count desc')
  end
end


