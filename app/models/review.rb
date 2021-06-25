class Review < ApplicationRecord
  belongs_to :filme

  validates :rating, presence: true
end
