class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  has_many :boats
  has_many :bookings
  # Renvoie les bateaux que j'ai reservé
  has_many :rented_boats, through: :bookings, source: :boat

  # renvoie les bateaux qu'on m'a reservé
  has_many :boats_requested, through: :boats, source: :bookings

  validates :first_name, :last_name, presence: true

end
