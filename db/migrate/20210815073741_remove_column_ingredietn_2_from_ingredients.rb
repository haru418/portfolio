class RemoveColumnIngredietn2FromIngredients < ActiveRecord::Migration[5.1]
  def change
    remove_column :ingredients, :ingredient_2
    remove_column :ingredients, :ingredient_3
  end
end
