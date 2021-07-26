class User < ApplicationRecord
  has_many :recipes, dependent: :destroy
  has_many :active_relationships, class_name: "Relationship",
                        foreign_key: "follower_id",
                        dependent: :destroy
  has_many :passive_relationships, class_name: "Relationship",
                        foreign_key: "followed_id",
                        dependent: :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower
  validates :user_name, :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true
  
  def recipes
    Recipe.where(user_id: self.id)
  end

  # ユーザーのステータスフィードを返す
  def feed
    following_ids = "SELECT followed_id FROM relationships
                WHERE follower_id = :user_id"
    Recipe.where("user_id IN (#{following_ids})
            OR user_id = :user_id", user_id: id)
  end

  # ユーザーをフォローする
  def follow(other_user)
    active_relationships.create(followed_id: other_user.id)
  end

  # ユーザーをフォロー解除する
  def unfollow(other_user)
    active_relationships.find_by(followed_id: other_user.id).destroy
  end

  # 現在のユーザーがフォローしてたらtrueを返す
  def following?(other_user)
    following.include?(other_user)
  end
end
