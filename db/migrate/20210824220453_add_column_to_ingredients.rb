class AddColumnToIngredients < ActiveRecord::Migration[5.1]
  def change
    add_column :ingredients, :ingredient_2, :string
    add_column :ingredients, :ingredient_3, :string
    add_column :ingredients, :ingredient_4, :string
    add_column :ingredients, :ingredient_5, :string
    add_column :ingredients, :ingredient_6, :string
    add_column :ingredients, :ingredient_7, :string
    add_column :ingredients, :ingredient_8, :string
    add_column :ingredients, :ingredient_9, :string
  end
end
