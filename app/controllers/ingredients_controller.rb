class IngredientsController < ApplicationController

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(
      recipe_id: params[:id],
      ingredient: params[:ingredients][:ingredient],
      amount: params[:ingredients][:amount],
      unit: params[:ingredients][:unit]
    )
    if params[:recipe].present?
      params[:recipe][:ingredients_attributes].keys.each do |key|
        @ing_attr = Ingredient.new(
          recipe_id: params[:id],
          ingredient: params[:recipe][:ingredients_attributes][key][:ingredient],
          amount: params[:recipe][:ingredients_attributes][key][:amount],
          unit: params[:recipe][:ingredients_attributes][key][:unit]
        )
        @ing_attr.save
      end
    end
    if @ingredient.save
      redirect_to controller: :posts, action: :show, id: params[:id]
      flash[:notice] = "材料を追加しました"
    else
      render :new
    end
  end
end
