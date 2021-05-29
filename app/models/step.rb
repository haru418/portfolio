class Step < ApplicationRecord
  validates :step_1, presence: true, length: {maximum: 100}
end
