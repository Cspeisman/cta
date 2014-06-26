class BusStopsController < ApplicationController
  def index
    @routes = BusStop.get_route_stops_num
   
  end
end