class Restaurant < ApplicationRecord
 validates :name, :address, :category, presence: true
 STYLE = ["chinese", "italian", "japanese", "french", "belgian"]
 validates :category, inclusion: { in: STYLE }
 has_many :reviews, dependent: :destroy


end
