class CarsController < ApplicationController

  def index
    @cars = policy_scope(Car).order(created_at: :desc)
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
    authorize @car
  end

  def destroy
    authorize @car
  end

  private

  def set_car
    @car = Car.find(params[:id])
    authorize @car
  end

  def car_params
    params.require(:car).permit(:license_plate, :color, :name, :model, :brand, :photo)
  end
end
