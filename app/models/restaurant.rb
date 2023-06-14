class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORYS = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, presence: true
  validates :category, inclusion: { in: CATEGORYS }

end
