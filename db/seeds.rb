# coding:utf-8

 # ユーザーを一人ずつ作成します。
  User.create!(user_name: "ジョン", email: "jn@example.com", image: "user_1.png", password: "foobar")
  User.create!(user_name: "マイケル", email: "mk@example.com", image: "user_2.png", password: "foobar")
  User.create!(user_name: "ロジャー", email: "rg@example.com", image: "user_3.png", password: "foobar")
  User.create!(user_name: "スタントン", email: "st@example.com", image: "user_4.png", password: "foobar")
  User.create!(user_name: "ロドリゲス", email: "r@example.com", image: "user_5.png", password: "foobar")
  User.create!(user_name: "ハル", email: "haru@example.com", image: "user_6.png", password: "foobar")
  
  44.times do |n|
    user_name  = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    image = "user_default.png"
    password = "password"
    User.create!(user_name: user_name,
    email: email,
    image: image,
    password: password)
  end

  User.create!(user_name: "ゲスト", email: "guest@example.com", image: "default.png", password: "foobar")
  
# 投稿内容を一行ずつ記述して変数に代入します。
  Recipe.create!(cooking_name: "豚キムチ", comment: "美味しくできました", user_id: 1, cooking_image: "cooking_1.png")
  Recipe.create!(cooking_name: "納豆巻き", comment: "巻くのが大変でした", user_id: 2, cooking_image: "cooking_2.png")
  Recipe.create!(cooking_name: "チキンのトマト煮込み", comment: "ニンニクが効いてて美味しかったです", user_id: 3, cooking_image: "cooking_3.png")
  Recipe.create!(cooking_name: "野菜炒め", comment: "肉も入れればよかった", user_id: 4, cooking_image: "cooking_4.png")
  Recipe.create!(cooking_name: "肉豆腐", comment: "相性抜群", user_id: 5, cooking_image: "cooking_5.png")
  Recipe.create!(cooking_name: "手巻き寿司", comment: "巻くのも楽しい", user_id: 6, cooking_image: "cooking_6.png")
  
  # 作り方
  Step.create!(recipe_id: 1, step_1: "具材を切る1")
  Step.create!(recipe_id: 2, step_1: "具材を切る2")
  Step.create!(recipe_id: 3, step_1: "具材を切る3")
  Step.create!(recipe_id: 4, step_1: "具材を切る4")
  Step.create!(recipe_id: 5, step_1: "具材を切る5")
  Step.create!(recipe_id: 6, step_1: "具材を切る6")

# 材料
  Ingredient.create!(recipe_id: 1, ingredient_1: "豚肉")
  Ingredient.create!(recipe_id: 2, ingredient_1: "納豆")
  Ingredient.create!(recipe_id: 3, ingredient_1: "鶏肉")
  Ingredient.create!(recipe_id: 4, ingredient_1: "キャベツ")
  Ingredient.create!(recipe_id: 5, ingredient_1: "牛肉")
  Ingredient.create!(recipe_id: 6, ingredient_1: "海苔")
  
  # リレーションシップ
  users = User.all
  user  = users.first
  following = users[2..20]
  followers = users[3..30]
  following.each { |followed| user.follow(followed) }
  followers.each { |follower| follower.follow(user) }
