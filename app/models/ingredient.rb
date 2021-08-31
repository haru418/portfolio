class Ingredient < ApplicationRecord
  belongs_to :recipe, optional: true  #レシピモデルと関連付け
  validates :ingredient, presence: true, length: {maximum: 25}
  validates :amount, presence: true
  validates :unit, presence: true
end
