class Ingredient < ApplicationRecord
  validates :ingredient_1, presence: true, length: {maximum: 25}
end
