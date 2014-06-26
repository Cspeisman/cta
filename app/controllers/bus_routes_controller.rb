class BusRoutesController < ApplicationController
  def show
    @stops = BusStop.where(routes: params[:route_id])
    @locations = BusStop.popular_stops
  end
end