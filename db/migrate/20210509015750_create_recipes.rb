class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :cooking_name
      t.text :comment

      t.timestamps
    end
  end
end
