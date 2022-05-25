class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @bookings_owner = current_user.booking_requested
    @bookings_user = current_user.bookings
  end
end
