class Boat < ApplicationRecord
  include PgSearch::Model
  # multisearchable against: [:name, :category]

  pg_search_scope :search_by_columns,
                  against: %i[name category],
                  using: {
                    tsearch: { prefix: true }
                  }

  belongs_to :user
  has_many :bookings
  validates :name, :category, :capacity, :price_per_day, presence: true
  validates :name, uniqueness: true
  validates_associated :user
  validates :capacity, :price_per_day, numericality: { only_integer: true }
  has_many_attached :photos
end
