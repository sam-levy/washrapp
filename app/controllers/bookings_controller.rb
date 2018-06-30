class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :update, :destroy]

  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def show
  end

  def new
  end

  def create
    authorize @booking
  end

  def update
  end

  def destroy
    authorize @booking
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def booking_params
    params.require(:booking).permit(
      :user_id,
      :car_id,
      :address,
      :longitude,
      :status,
      :date,
      :after_photo
    )
  end
end
