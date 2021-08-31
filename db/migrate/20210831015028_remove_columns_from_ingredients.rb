class RemoveColumnsFromIngredients < ActiveRecord::Migration[5.1]
  def change
    remove_column :ingredients, :ingredient_1
    remove_column :ingredients, :ingredient_2
    remove_column :ingredients, :ingredient_3
    remove_column :ingredients, :ingredient_4
    remove_column :ingredients, :ingredient_5
    remove_column :ingredients, :ingredient_6
    remove_column :ingredients, :ingredient_7
    remove_column :ingredients, :ingredient_8
    remove_column :ingredients, :ingredient_9
    remove_column :ingredients, :amount_1
    remove_column :ingredients, :amount_2
    remove_column :ingredients, :amount_3
    remove_column :ingredients, :amount_4
    remove_column :ingredients, :amount_5
    remove_column :ingredients, :amount_6
    remove_column :ingredients, :amount_7
    remove_column :ingredients, :amount_8
    remove_column :ingredients, :amount_9
    remove_column :ingredients, :unit_1
    remove_column :ingredients, :unit_2
    remove_column :ingredients, :unit_3
    remove_column :ingredients, :unit_4
    remove_column :ingredients, :unit_5
    remove_column :ingredients, :unit_6
    remove_column :ingredients, :unit_7
    remove_column :ingredients, :unit_8
    remove_column :ingredients, :unit_9
  end
end
