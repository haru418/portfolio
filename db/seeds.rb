require 'faker'
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

  User.create!(user_name: "ゲスト", email: "guest@example.com",
            image: "user_default.png", password: "foobar")
  
# 投稿内容を一行ずつ記述して変数に代入します。
Recipe.create!(cooking_name: "豚キムチ", comment: "美味しくできました", user_id: 1,
cooking_image: File.open("./public/cooking_images/cooking_1.png"))
Recipe.create!(cooking_name: "納豆巻き", comment: "巻くのが大変でした", user_id: 2,
cooking_image: File.open("./public/cooking_images/cooking_2.png"))
Recipe.create!(cooking_name: "チキンのトマト煮込み", comment: "ニンニクが効いてて美味しかったです",
user_id: 3, cooking_image: File.open("./public/cooking_images/cooking_3.png"))
Recipe.create!(cooking_name: "野菜炒め", comment: "肉も入れればよかった", user_id: 4,
cooking_image: File.open("./public/cooking_images/cooking_4.png"))
Recipe.create!(cooking_name: "肉豆腐", comment: "相性抜群", user_id: 5,
cooking_image: File.open("./public/cooking_images/cooking_5.png"))
Recipe.create!(cooking_name: "手巻き寿司", comment: "巻くのも楽しい", user_id: 6,
cooking_image: File.open("./public/cooking_images/cooking_6.png"))

130.times do |n|
  cooking_name = Faker::Food.sushi
  Recipe.create!(
    user_id: rand(7..51),
    cooking_name: cooking_name,
    comment: "思ってたより見栄えも良く作れたし何より美味しそう！早く食べたい。思ってたより
    見栄えも良く作れたし何より美味しそう！早く食べたい。思ってたより見栄えも良く作れたし
    何より美味しそう！早く食べたい。思ってたより見栄えも良く作れたし何より美味しそう！
    早く食べたい。思ってたより見栄えも良く作れたし何より美味しそう！早く食べたい。思ってたより
    見栄えも良く作れたし何より美味しそう！早く食べたい。",
    cooking_image: File.open("./public/cooking_images/sushi.jpg")
    )
  end
  
  # 材料
  Ingredient.create!(recipe_id: 1, ingredient: "豚肉", amount: "100", unit: "グラム")
  Ingredient.create!(recipe_id: 1, ingredient: "キムチ", amount: "50", unit: "グラム")
  Ingredient.create!(recipe_id: 1, ingredient: "ごま油", amount: "1", unit: "大さじ")
  Ingredient.create!(recipe_id: 2, ingredient: "納豆", amount: "1", unit: "パック")
  Ingredient.create!(recipe_id: 3, ingredient: "鶏肉", amount: "100", unit: "グラム")
  Ingredient.create!(recipe_id: 4, ingredient: "キャベツ", amount: "1", unit: "個")
  Ingredient.create!(recipe_id: 5, ingredient: "牛肉", amount: "150", unit: "グラム")
  Ingredient.create!(recipe_id: 6, ingredient: "海苔", amount: "1", unit: "枚")

  recipes = Recipe.where(id: 6..136)
  recipes.each do |recipe|
    Ingredient.create!(
      recipe_id: recipe.id,
      ingredient: "生魚",
      amount: "150",
      unit: "グラム"
    )
  end

  recipes = Recipe.where(id: 6..136)
  recipes.each do |recipe|
    Ingredient.create!(
      recipe_id: recipe.id,
      ingredient: "白米",
      amount: "1",
      unit: "合"
    )
  end

  recipes = Recipe.where(id: 6..136)
  recipes.each do |recipe|
    Ingredient.create!(
      recipe_id: recipe.id,
      ingredient: "お酢",
      amount: "3",
      unit: "大さじ"
    )
  end

  recipes = Recipe.where(id: 6..136)
  recipes.each do |recipe|
    Ingredient.create!(
      recipe_id: recipe.id,
      ingredient: "醤油",
      amount: "お好みで",
      unit: ""
    )
  end

  recipes = Recipe.where(id: 6..136)
  recipes.each do |recipe|
    Ingredient.create!(
      recipe_id: recipe.id,
      ingredient: "わさび",
      amount: "お好みで",
      unit: ""
    )
  end

  # 作り方
  Step.create!(recipe_id: 1, step_1: "具材を切る1", step_2: "具材を切る2", step_3: "具材を切る3")
  Step.create!(recipe_id: 2, step_1: "具材を切る2")
  Step.create!(recipe_id: 3, step_1: "具材を切る3")
  Step.create!(recipe_id: 4, step_1: "具材を切る4")
  Step.create!(recipe_id: 5, step_1: "具材を切る5")
  Step.create!(recipe_id: 6, step_1: "具材を切る6")

  recipes = Recipe.where(id: 7..136)
  recipes.each do |recipe|
    Step.create!(
      recipe_id: recipe.id,
      step_1: "まず炊いた白米に酢を入れまんべんなく混ざるまでしゃもじで着るように混ぜ合わせます。次に混ぜた白米を
      ひと口分手に取りお寿司のシャリの形になるように握ります。",
      step_2: "シャリができたら生魚を食べやすい大きさに薄く切っていきます。",
      step_3: "最後にわさびをお好みでシャリに付けて食べやすい大きさに切ったネタをのせたら完成です！"
    )
  end
  
  # リレーションシップ
  users = User.all
  user  = users.first
  following = users[2..20]
  followers = users[3..30]
  following.each { |followed| user.follow(followed) }
  followers.each { |follower| follower.follow(user) }
