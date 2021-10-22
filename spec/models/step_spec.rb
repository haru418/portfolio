require 'rails_helper'

RSpec.describe Step, type: :model do

  before do
    @user = User.create(
      user_name: "ben",
      email: "ben@example.com",
      password: "00000000"
    )
  end

  #レシピID、作り方1があれば有効な状態であること
  it "is valid with a recipe_id, and step_1" do
    recipe = @user.recipes.create(
      cooking_name: "海老フライ",
      user_id: @user.id
    )

    step = recipe.steps.create(
      recipe_id: recipe.id,
      step_1: "海老に衣を付けます。"
    )
    step.valid?
    expect(step).to be_valid
  end

  #レシピIDがなければ無効な状態であること
  it "is invalid without a recipe_id" do
    step = Step.new(recipe_id: nil)
    step.valid?
    expect(step.errors[:recipe_id]).to include("を入力してください")
  end

  #作り方1がなければ無効な状態であること
  it "is invalid without a step_1" do
    step = Step.new(step_1: nil)
    step.valid?
    expect(step.errors[:step_1]).to include("を入力してください")
  end

  #301文字以上の作り方1は無効であること
  it "is invalid step_1 of 301 characters or more" do
    step_1 = "a" * 301
    step = Step.new(step_1: step_1)
    step.valid?
    expect(step.errors[:step_1]).to include("は300文字以内で入力してください")
  end
end
