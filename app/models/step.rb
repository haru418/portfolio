class Step < ApplicationRecord
  belongs_to :recipe, optional: true
  validates :recipe_id, presence: true
  validates :step_1, presence: true, length: {maximum: 300}
end
