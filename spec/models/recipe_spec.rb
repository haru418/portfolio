require 'rails_helper'

RSpec.describe Recipe, type: :model do
  #料理名、ユーザーIDがあれば有効な状態であること
   it "is valid with a cooking_name, and user_id" do
    user = User.create(
      user_name: "ben",
      email: "tester@example.com",
      password: "00000000"
    )

    recipe = user.recipes.build(
      cooking_name: "野菜炒め",
      user_id: user.id
    )
    recipe.valid?
    expect(recipe).to be_valid
   end

  #51文字以上の料理名は無効であること
  it "is invalid cooking_name of 51 characters or more" do
    user = User.create(
      user_name: "ben",
      email: "tester@example.com",
      password: "00000000"
    )

    cooking_name = "a" * 51
    recipe = user.recipes.build(
      cooking_name: cooking_name,
      user_id: user.id
    )
    recipe.valid?
    expect(recipe.errors[:cooking_name]).to include("は50文字以内で入力してください")
  end
end
