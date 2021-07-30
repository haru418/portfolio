class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_current_user
  
  def set_current_user
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end
  
  # ユーザーのログインを確認する
  def authenticate_user
    unless @current_user
      flash[:notice] = "ログインしてください"
      redirect_to login_url
    end
  end
  
  def limitation_login_user
    if @current_user
      flash[:notice] = "すでにログイン状態です"
      redirect_to posts_index_url
    end
  end

  # ユーザーがログインしていればtrue、その他ならfalseを返す
  def logged_in?
    !set_current_user.nil?
  end

  def set_search
    @q = User.ransack(params[:q])
    @results = @q.result
    @q_recipes = Recipe.ransack(params[:q])
    @results = @q_recipes.result
    @q_ingredients = Ingredient.ransack(params[:q])
    @results = @q_ingredients.result
  end
end
