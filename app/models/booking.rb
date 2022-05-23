class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :boat

  after_create :set_price

  def create
  end

  def update
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :boat_id)
  end

  def set_price
    self.amount = (self.end_date - self.start_date) * self.boat.price
    self.save
  end


end
