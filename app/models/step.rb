class Step < ApplicationRecord
  belongs_to :recipe
  validates :step_1, presence: true, length: {maximum: 100}
end
