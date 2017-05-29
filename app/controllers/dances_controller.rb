class DancesController < ApplicationController

  def index
    @dances = Dance.all
  end

  def show
    @dance = Dance.find(params[:id])
  end
end
