class Recipe < ApplicationRecord
  belongs_to :user
  validates :cooking_name, :comment, presence: true, length: {maximum: 200}
  validates :user_id, presence: true
  
  def user
    User.find(self.user_id)
  end
end


