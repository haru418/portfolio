FactoryBot.define do
  factory :recipe do
    cooking_name { "野菜炒め" }
    user_id { FactoryBot.create(:user).id }
  end
end
