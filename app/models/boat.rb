class Boat < ApplicationRecord
  belongs_to :user
  validates :name, :category, :capacity, :price_per_day, presence: true
  validates :name, uniqueness: true
end
