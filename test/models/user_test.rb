require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "feed should have the right posts" do
    michael = users(:michael)
    archer  = users(:archer)
    lana    = users(:lana)
    # フォローしているユーザーの投稿を確認
    lana.recipes.each do |post_following|
      assert michael.feed.include?(post_following)
    end
    # 自分自身の投稿を確認
    michael.recipes.each do |post_self|
      assert michael.feed.include?(post_self)
    end
    # フォローしていないユーザーの投稿を確認
    archer.recipes.each do |post_unfollowed|
      assert_not michael.feed.include?(post_unfollowed)
    end
  end
end