class Review < ApplicationRecord
  belongs_to :kitchen
  belongs_to :user
end
