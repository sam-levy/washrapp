class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]

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
  end

  def destroy
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
