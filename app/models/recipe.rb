class Recipe < ApplicationRecord
  belongs_to :user
  has_many :ingredients, dependent: :destroy
  has_many :steps, dependent: :destroy
  accepts_nested_attributes_for :ingredients, :steps, allow_destroy: true
  validates :cooking_name, presence: true, length: {maximum: 200}
  validates :user_id, presence: true
  
  def user
    User.find(self.user_id)
  end
end


