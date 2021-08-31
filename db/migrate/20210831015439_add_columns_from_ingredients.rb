class AddColumnsFromIngredients < ActiveRecord::Migration[5.1]
  def change
    add_column :ingredients, :ingredient, :string
    add_column :ingredients, :amount, :string
    add_column :ingredients, :unit, :string
  end
end
