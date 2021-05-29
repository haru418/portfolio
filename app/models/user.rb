class User < ApplicationRecord
  validates :user_name, :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true
  
  def recipes
    Recipe.where(user_id: self.id)
  end
end
