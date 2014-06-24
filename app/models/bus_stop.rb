class BusStop < ActiveRecord::Base
  self.primary_key = 'stop_id'

  def self.get_route_stops_num
    group('routes').count.sort_by{|k , v| v}.reverse
  end
end
