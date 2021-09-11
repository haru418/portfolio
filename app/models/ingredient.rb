class Ingredient < ApplicationRecord
  belongs_to :recipe, optional: true
  validates :ingredient, presence: true, length: {maximum: 25}
  validates :amount, presence: true
end
