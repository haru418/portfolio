class Ingredient < ApplicationRecord
  belongs_to :recipe, optional: true
  validates :ingredient_1, presence: true, length: {maximum: 25}
  validates :amount_1, presence: true
  validates :unit_1, presence: true
end
