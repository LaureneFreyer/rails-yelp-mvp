class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  categorys = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, presence: true
  validates :category, inclusion: { in: categorys }

end
