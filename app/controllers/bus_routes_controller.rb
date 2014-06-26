class BusRoutesController < ApplicationController
  def show
    @stops = BusStop.where(routes: params[:route_id])
  end
end