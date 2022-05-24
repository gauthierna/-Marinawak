class Boat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :category, :capacity, :price_per_day, presence: true
  validates :name, uniqueness: true
  validates_associated :user
  validates :capacity, :price_per_day, numericality: { only_integer: true }
  has_many_attached :photos
end
