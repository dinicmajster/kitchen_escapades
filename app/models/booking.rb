class Booking < ApplicationRecord
  belongs_to :kitchen
  belongs_to :user
end
