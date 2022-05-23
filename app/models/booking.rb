class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :boat

  after_create :set_price

  def set_price
    self.amount = (self.end_date - self.start_date) * self.boat.price
    self.save
  end
end
