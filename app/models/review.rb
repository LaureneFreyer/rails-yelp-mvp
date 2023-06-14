class Review < ApplicationRecord
  belongs_to :restaurant

  ratings = [0, 1, 2, 3, 4, 5]
  validates :content, presence: true
  validates :rating, inclusion: { in: ratings }, numericality: { only_integer: true }
end
