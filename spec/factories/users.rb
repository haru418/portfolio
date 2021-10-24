FactoryBot.define do
  factory :user do
    user_name { "ben" }
    email { "tester@example.com" }
    password { "00000000" }
  end
end
