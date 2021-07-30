class IngredientsController < ApplicationController

  def search
    @q_ingredients = Ingredient.ransack(params[:q])
    @results = @q_ingredients.result
  end
end
