class Ingredient < ApplicationRecord
  belongs_to :recipe
  validates :ingredient_1, presence: true, length: {maximum: 25}
end
