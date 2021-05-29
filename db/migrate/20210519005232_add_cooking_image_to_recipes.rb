class AddCookingImageToRecipes < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :cooking_image, :string
  end
end
