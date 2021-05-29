class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.integer :recipe_id
      t.string :ingredient_1
      t.string :ingredient_2
      t.string :ingredient_3

      t.timestamps
    end
  end
end
