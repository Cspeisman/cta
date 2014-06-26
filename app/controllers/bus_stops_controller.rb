class BusStopsController < ApplicationController
  def index
    @routes = BusStop.get_route_stops_num
    @locations = BusStop.popular_stops
  end
end