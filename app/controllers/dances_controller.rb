class DancesController < ApplicationController

  def index
    @dances = Dance.all
  end

  def show
    @dance = Dance.find(params[:id])
  end

  def create
    @dance = Dance.new(dance_params)
    if @dance.save
      render :show, status: :created, location: @dance
    else
      render json: @dance.errors, status: :unprocessable_entity
    end
  end

  private

  def dance_params
    params.require(:dance).permit(:title, :description)
  end
end
