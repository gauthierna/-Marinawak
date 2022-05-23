class BookingsController < ApplicationController
  before_action :booking_params, only: %i[create update]

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.boat_id = params[:boat_id]
    @booking.status = "pending"
    if @booking.save
      redirect_to dashboard_path
    else
      render boat_path(@booking.boat.id), status: :unprocessable_entity
    end
  end

  def update
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_boat
    @boat = Boat.find(params[:boat_id])
  end

end
