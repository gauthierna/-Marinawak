class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  has_many :boats, dependent: :destroy
  has_many :bookings
  has_one_attached :avatar

  # Renvoie les bateaux que j'ai reservé
  has_many :rented_boats, through: :bookings, source: :boat

  # renvoie les bateaux qu'on m'a reservé
  has_many :booking_requested, through: :boats, source: :bookings
  validates :first_name, :last_name, presence: true
  has_one_attached :avatar

end
