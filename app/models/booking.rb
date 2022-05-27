class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :boat

  after_create :set_price

  scope :pending, -> { where(status: "pending") }
  scope :accepted, -> { where(status: "accepted") }
  scope :denied, -> { where(status: "denied") }

  def set_price
    self.amount = (end_date - start_date) * boat.price_per_day
    save
  end
end

# booking.user ==> celui qui book
# booking.boat.user ==> le propriétaire du bateau
