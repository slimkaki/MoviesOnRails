class Review < ApplicationRecord
  belongs_to :filme
  belongs_to :user

  validates :rating, presence: true
end
