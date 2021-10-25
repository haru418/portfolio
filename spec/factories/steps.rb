FactoryBot.define do
  factory :step do
    recipe_id { FactoryBot.create(:recipe).id }
    step_1 { "海老に衣を付けます。" }
  end
end
