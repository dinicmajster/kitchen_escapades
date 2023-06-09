class Kitchen < ApplicationRecord
  monetize :price_cents
  has_many_attached :photos
  has_many :feature_kitchens, dependent: :destroy
  has_many :features, through: :feature_kitchens
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  belongs_to :user
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
