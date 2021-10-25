require 'rails_helper'

RSpec.describe Recipe, type: :model do
  #料理名、ユーザーIDがあれば有効な状態であること
   it "is valid with a cooking_name, and user_id" do
    recipe = FactoryBot.build(:recipe)
    recipe.valid?
    expect(recipe).to be_valid
   end

   #料理名がなければ無効な状態であること
   it "is invalid without a cooking_name" do
    recipe = FactoryBot.build(:recipe, cooking_name: nil)
    recipe.valid?
    expect(recipe.errors[:cooking_name]).to include("を入力してください")
   end
   
   #ユーザーIDがなければ無効な状態であること
   it "is invalid without a user_id" do
    recipe = FactoryBot.build(:recipe, user_id: nil)
    recipe.valid?
    expect(recipe.errors[:user_id]).to include("を入力してください")
   end

  #51文字以上の料理名は無効であること
  it "is invalid cooking_name of 51 characters or more" do
    cooking_name = "a" * 51
    recipe = FactoryBot.build(:recipe, cooking_name: cooking_name)
    recipe.valid?
    expect(recipe.errors[:cooking_name]).to include("は50文字以内で入力してください")
  end
end
