class PostsController < ApplicationController
  before_action :authenticate_user
  before_action :limitation_correct_user, only: [:edit, :update, :destroy]
  
  def index
    @recipes = Recipe.all.order(created_at: :desc)
  end
  
  def new
    @recipe = Recipe.new
    @ingredient = Ingredient.new
    @step = Step.new
  end
  
  def create
    @recipe = Recipe.new(
      cooking_name: params[:cooking_name],
      comment: params[:comment],
      user_id: @current_user.id,
      cooking_image: params[:cooking_image],
    )
    @ingredient = Ingredient.new(
      recipe_id: @recipe.id,
      ingredient_1: params[:ingredient_1],
      ingredient_2: params[:ingredient_2],
      ingredient_3: params[:ingredient_3],
    )
    @step = Step.new(
      recipe_id: @recipe.id,
      step_1: params[:step_1],
      step_2: params[:step_2],
      step_3: params[:step_3],
    )
    if params[:cooking_image]
      @recipe.cooking_image = "cooking_#{@recipe.id}.png"
      File.binwrite("public/cooking_images/#{@recipe.cooking_image}", params[:cooking_image].read)
    else
      @recipe.cooking_image = "cooking_default.png"
    end
    if @recipe.save && @ingredient.save && @step.save
      redirect_to posts_index_url
      flash[:notice] = "投稿を作成しました"
    else
      render :new
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    @user = @recipe.user
    @step = Step.find(params[:id])
    @ingredient = Ingredient.find(params[:id])
  end
  
  def edit
  end
  
  def update
    @recipe.cooking_name = params[:cooking_name]
    @recipe.comment = params[:comment]
    if params[:cooking_image]
      @recipe.cooking_image = "cooking_#{@recipe.id}.png"
      File.binwrite("public/cooking_images/#{@recipe.cooking_image}", params[:cooking_image].read)
    else
      @recipe.cooking_image = "cooking_default.png"
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
    
    @ingredient.ingredient_1 = params[:ingredient_1]
    @ingredient.ingredient_2 = params[:ingredient_2]
    @ingredient.ingredient_3 = params[:ingredient_3]
    @ingredient.save
  end
  
  def destroy
    @recipe.destroy
    @step.destroy
    @ingredient.destroy
    redirect_to posts_index_url
    flash[:notice] = "投稿を削除しました"
  end
  
  def following
  end
  
  def limitation_correct_user
    @recipe = Recipe.find(params[:id])
    @step = Step.find(params[:id])
    @ingredient = Ingredient.find(params[:id])
    unless @recipe.user_id == @current_user.id
      flash[:notice] = "自分以外の投稿の編集はできません"
      redirect_to posts_index_url
    end
  end
end
