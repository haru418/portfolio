class ChangeDataAmountToIngredients < ActiveRecord::Migration[5.1]
  def change
    change_column :ingredients, :amount_1, :string
    change_column :ingredients, :amount_2, :string
    change_column :ingredients, :amount_3, :string
    change_column :ingredients, :amount_4, :string
    change_column :ingredients, :amount_5, :string
    change_column :ingredients, :amount_6, :string
    change_column :ingredients, :amount_7, :string
    change_column :ingredients, :amount_8, :string
    change_column :ingredients, :amount_9, :string
  end
end
