class AddCulumnAmountToIngredients < ActiveRecord::Migration[5.1]
  def change
    add_column :ingredients, :amount, :integer
  end
end
