class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :timeoutable
  has_one_attached :photo
  has_many :kitchens
  has_many :bookings
  has_many :bookings_as_owner, through: :kitchens, source: :kitchens
end
