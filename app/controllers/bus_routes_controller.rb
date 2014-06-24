class BusRoutesController < ApplicationController
  def show
    @stops = BusStop.where(routes: params[:id])
  end
end