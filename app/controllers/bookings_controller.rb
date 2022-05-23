class BookingsController < ApplicationController
  before_action :booking_params, only: %i[create update]

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render show_path(@boat), status: :unprocessable_entity
    end
  end

  def update
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :boat_id)
  end

end
