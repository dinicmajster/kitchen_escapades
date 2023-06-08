class Feature < ApplicationRecord
  has_many :feature_kitchens
  has_many :kitchens, through: :feature_kitchens
end
