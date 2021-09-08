class Recipe < ApplicationRecord
  belongs_to :user
  has_many :ingredients, inverse_of: :recipe, dependent: :destroy
  has_many :steps, dependent: :destroy
  accepts_nested_attributes_for :ingredients, allow_destroy: true
  mount_uploader :cooking_image, CookingImageUploader
  validates :cooking_name, presence: true, length: {maximum: 200}
  validates :user_id, presence: true
  # validates :cooking_image, presence: true
  
  # def user
  #   User.find(self.user_id)
  # end
end


