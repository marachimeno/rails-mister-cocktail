class Review < ApplicationRecord
  belongs_to :cocktail
  validates :content, presence: true
  validates_associated :cocktail
end
