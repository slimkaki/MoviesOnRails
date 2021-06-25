class Filme < ApplicationRecord
    has_many :reviews, dependent: :delete_all
    
    validates :titulo, presence: true, uniqueness: true
end
