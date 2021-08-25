class AddUnitsToIngredients < ActiveRecord::Migration[5.1]
  def change
    add_column :ingredients, :unit_1, :string
    add_column :ingredients, :unit_2, :string
    add_column :ingredients, :unit_3, :string
    add_column :ingredients, :unit_4, :string
    add_column :ingredients, :unit_5, :string
    add_column :ingredients, :unit_6, :string
    add_column :ingredients, :unit_7, :string
    add_column :ingredients, :unit_8, :string
    add_column :ingredients, :unit_9, :string
  end
end
