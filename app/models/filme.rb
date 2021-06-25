class Filme < ApplicationRecord
    has_many :reviews
    
    validates :titulo, presence: true 
end
