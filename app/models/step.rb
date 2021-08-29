class Step < ApplicationRecord
  belongs_to :recipe, optional: true
  validates :step_1, presence: true, length: {maximum: 300}
end
