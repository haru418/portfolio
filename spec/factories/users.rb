FactoryBot.define do
  factory :user, aliases: [:owner] do
    user_name { "ben" }
    sequence(:email) { |n| "tester#{n}@example.com" }
    password { "00000000" }
  end
end
