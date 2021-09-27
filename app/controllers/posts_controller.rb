class PostsController < ApplicationController
  before_action :authenticate_user
  before_action :limitation_correct_user, only: [:edit, :update, :destroy]
  
  def index
    if logged_in?
      @recipe = set_current_user.recipes.build
      @feed_items = set_current_user.feed.paginate(page: params[:page]).order(created_at: :desc)
    end
  end
  
  def new
    @recipe = Recipe.new
    @ingredient = @recipe.ingredients.build
    @step = Step.new
  end
  
  def create
    @recipe = Recipe.new
    @recipe.id = Recipe.last.id + 1
    @recipe.user_id = @current_user.id
    @recipe.cooking_name = params[:recipe][:cooking_name]
    @recipe.cooking_image = params[:recipe][:cooking_image]
    @recipe.comment = params[:recipe][:comment]
    @step = Step.new(
      recipe_id: @recipe.id,
      step_1: params[:recipe][:steps][:step_1],
      step_2: params[:recipe][:steps][:step_2],
      step_3: params[:recipe][:steps][:step_3]
    )
    if params[:recipe][:cooking_name].present? && params[:recipe][:steps][:step_1].present?
      params[:recipe][:ingredients_attributes].keys.each do |key|
        @ingredient = Ingredient.new(
          recipe_id: @recipe.id,
          ingredient: params[:recipe][:ingredients_attributes][key][:ingredient],
          amount: params[:recipe][:ingredients_attributes][key][:amount],
          unit: params[:recipe][:ingredients_attributes][key][:unit]
        )
        @ingredient.save
      end
    end
    if @step.save && @recipe.save
      redirect_to posts_index_url
      flash[:notice] = "投稿を作成しました"
    else
      @feed_items = []
      render :new
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    @user = @recipe.user
    @ingredient = Ingredient.where(recipe_id: params[:id])
    @step = Step.find_by(recipe_id: params[:id])
    @likes_count = Like.where(recipe_id: @recipe.id).count
  end
  
  def edit
    @recipe = Recipe.find(params[:id])
    @ingredient = Ingredient.where(recipe_id: params[:id])
    @step = Step.find_by(recipe_id: @recipe.id)
  end
  
  def update
    @recipe.cooking_name = params[:cooking_name]
    @recipe.comment = params[:comment]
    @recipe.cooking_image = params[:cooking_image]
    params[:ingredients].keys.each do |key|
      @ingredient = Ingredient.find_by(id: key)
      @ingredient.ingredient = params[:ingredients][key][:ingredient]
      @ingredient.amount = params[:ingredients][key][:amount]
      @ingredient.unit = params[:ingredients][key][:unit]
      @ingredient.save
    end
    @step.step_1 = params[:step_1]
    @step.step_2 = params[:step_2]
    @step.step_3 = params[:step_3]
    if @step.save && @recipe.save
      redirect_to posts_index_url
      flash[:notice] = "投稿を編集しました"
    else
      render :edit
    end
  end
  
  def destroy
    @recipe.destroy
    @step.destroy
    @ingredient.destroy
    redirect_to posts_index_url
    flash[:notice] = "投稿を削除しました"
  end

  def search
    @q_recipes = Recipe.ransack(params[:q])
    @results = @q_recipes.result
  end

  private
  
    def limitation_correct_user
      @recipe = Recipe.find(params[:id])
      @step = Step.find_by(recipe_id: @recipe.id)
      @ingredient = Ingredient.find_by(recipe_id: @recipe.id)
      unless @recipe.user_id == @current_user.id
        flash[:notice] = "自分以外の投稿の編集はできません"
        redirect_to posts_index_url
      end
    end
end
