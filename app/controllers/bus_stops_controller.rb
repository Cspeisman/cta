class BusStopsController < ApplicationController
  def index
    @routes = BusStop.get_route_stops_num
    render json: @routes if request.xhr?
  end
end