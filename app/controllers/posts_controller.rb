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
    @step = @recipe.steps.build
  end
  
  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = @current_user.id
    @recipe.cooking_name = params[:recipe][:cooking_name]
    @recipe.cooking_image = params[:recipe][:cooking_image]
    @recipe.comment = params[:recipe][:comment]

    @ingredient = Ingredient.new(recipe_params)
    @ingredient.recipe_id = Recipe.last.id + 1
    @ingredient.ingredient = params[:recipe][:ingredients_attributes][:ingredient]
    @ingredient.amount = params[:recipe][:ingredients_attributes][:amount]
    @ingredient.unit = params[:recipe][:ingredients_attributes][:unit]
    
    @step = Step.new(recipe_params)
    @step.recipe_id = Recipe.last.id + 1
    @step.step_1 = params[:recipe][:steps_attributes][:step_1]
    @step.step_2 = params[:recipe][:steps_attributes][:step_2]
    @step.step_3 = params[:recipe][:steps_attributes][:step_3]
    if @ingredient.save && @step.save && @recipe.save
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
    @ingredient = Ingredient.find_by(recipe_id: @recipe.id)
    @step = Step.find_by(recipe_id: @recipe.id)
    @likes_count = Like.where(recipe_id: @recipe.id).count
  end
  
  def edit
    @recipe = Recipe.find(params[:id])
  end
  
  def update
    @recipe = Recipe.find(params[:id])
    @recipe.cooking_name = params[:cooking_name]
    @recipe.comment = params[:comment]
    @recipe.cooking_image = params[:cooking_image] if @recipe.cooking_image.blank?
    if params[:cooking_image]
      @recipe.cooking_image = "cooking_#{@recipe.id}.png"
      File.binwrite("public/cooking_images/#{@recipe.cooking_image}", params[:cooking_image].read)
    end
    if @recipe.save
      redirect_to posts_index_url
      flash[:notice] = "投稿を編集しました"
    else
      render :edit
    end
    
    @step.step_1 = params[:step_1]
    @step.step_2 = params[:step_2]
    @step.step_3 = params[:step_3]
    @step.save
    
    @ingredient.ingredient = params[:ingredient]
    @ingredient.amount = params[:amount]
    @ingredient.unit = params[:unit]
    @ingredient.save
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
    def recipe_params
      params.permit(:user_id, :cooking_name, :cooking_image, :comment,
                  ingredients_attributes:[:id, :recipe_id, :ingredient, :amount, :unit, :_destroy],
                  steps_attributes:[:id, :recipe_id, :step_1, :step_2, :step_3, :_destroy])
    end
end
