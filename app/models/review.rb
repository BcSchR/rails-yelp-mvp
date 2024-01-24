class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates_numericality_of :rating, :only_integer => true, :in => 0..5
end
