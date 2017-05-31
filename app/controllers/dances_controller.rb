class DancesController < ApplicationController
  before_action :set_dance, except: [:index, :create]

  def index
    @dances = Dance.all
  end

  def show
  end

  def create
    @dance = Dance.new(dance_params)
    if @dance.save
      render :show, status: :created, location: @dance
    else
      render json: @dance.errors, status: :unprocessable_entity
    end
  end

  def update
    if @dance.update(dance_params)
      render json: @dance
    else
      render json: @dance.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @dance.destroy
  end


  private

  def set_dance
    @dance = Dance.find(params[:id])
  end

  def dance_params
    params.require(:dance).permit(:title, :description)
  end
end
