class AddAmountsToIngredients < ActiveRecord::Migration[5.1]
  def change
    add_column :ingredients, :amount_1, :integer
    add_column :ingredients, :amount_2, :integer
    add_column :ingredients, :amount_3, :integer
    add_column :ingredients, :amount_4, :integer
    add_column :ingredients, :amount_5, :integer
    add_column :ingredients, :amount_6, :integer
    add_column :ingredients, :amount_7, :integer
    add_column :ingredients, :amount_8, :integer
    add_column :ingredients, :amount_9, :integer
  end
end
