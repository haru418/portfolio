class RelationshipsController < ApplicationController
  before_action :authenticate_user

  def create
    user = User.find(params[:followed_id])
    set_current_user.follow(user)
    redirect_to user
  end

  def destroy
    user = Relationship.find(params[:id]).followed
    set_current_user.unfollow(user)
    redirect_to user
  end
end
