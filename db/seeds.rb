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
            image: "user_4.png", password: "foobar")
  
# 投稿内容を一行ずつ記述して変数に代入します。
Recipe.create!(cooking_name: "納豆巻き", comment: "巻くのが大変でした", user_id: 2,
cooking_image: File.open("./app/assets/images/cooking_2.jpg"))
Recipe.create!(cooking_name: "チキンのトマト煮込み", comment: "ニンニクが効いてて美味しかったです",
user_id: 3, cooking_image: File.open("./app/assets/images/cooking_3.jpg"))
Recipe.create!(cooking_name: "野菜炒め", comment: "肉も入れればよかった", user_id: 4,
cooking_image: File.open("./app/assets/images/cooking_4.jpg"))
Recipe.create!(cooking_name: "肉豆腐", comment: "相性抜群", user_id: 5,
cooking_image: File.open("./app/assets/images/cooking_5.jpg"))
Recipe.create!(cooking_name: "手巻き寿司", comment: "巻くのも楽しい", user_id: 6,
cooking_image: File.open("./app/assets/images/cooking_6.jpg"))

153.times do |n|
  cooking_name = Faker::Food.sushi
  Recipe.create!(
    user_id: rand(1..51),
    cooking_name: cooking_name,
    comment: "思ってたより見栄えも良く作れたし何より美味しそう！早く食べたい。思ってたより
    見栄えも良く作れたし何より美味しそう！早く食べたい。思ってたより見栄えも良く作れたし
    何より美味しそう！早く食べたい。思ってたより見栄えも良く作れたし何より美味しそう！
    早く食べたい。思ってたより見栄えも良く作れたし何より美味しそう！早く食べたい。思ってたより
    見栄えも良く作れたし何より美味しそう！早く食べたい。",
    cooking_image: File.open("./app/assets/images/sushi.jpg")
    )
  end

  Recipe.create!(cooking_name: "豚キムチ", comment: "豚肉とキムチの比率が良かったので美味しくできた。
  ただ、もう少し辛い方が自分好みなので次作るときは何か辛味が増すものを入れてみようと思う。", user_id: 51,
  cooking_image: File.open("./app/assets/images/cooking_1.jpg"))
  
  # 材料
  Ingredient.create!(recipe_id: 1, ingredient: "納豆", amount: "1", unit: "パック")
  Ingredient.create!(recipe_id: 2, ingredient: "鶏肉", amount: "100", unit: "グラム")
  Ingredient.create!(recipe_id: 3, ingredient: "キャベツ", amount: "1", unit: "個")
  Ingredient.create!(recipe_id: 4, ingredient: "牛肉", amount: "150", unit: "グラム")
  Ingredient.create!(recipe_id: 5, ingredient: "海苔", amount: "1", unit: "枚")

  recipes = Recipe.where(id: 6..158)
  recipes.each do |recipe|
    Ingredient.create!(
      recipe_id: recipe.id,
      ingredient: "生魚",
      amount: "150",
      unit: "グラム"
    )
  end

  recipes = Recipe.where(id: 6..158)
  recipes.each do |recipe|
    Ingredient.create!(
      recipe_id: recipe.id,
      ingredient: "白米",
      amount: "1",
      unit: "合"
    )
  end

  recipes = Recipe.where(id: 6..158)
  recipes.each do |recipe|
    Ingredient.create!(
      recipe_id: recipe.id,
      ingredient: "お酢",
      amount: "3",
      unit: "大さじ"
    )
  end

  recipes = Recipe.where(id: 6..158)
  recipes.each do |recipe|
    Ingredient.create!(
      recipe_id: recipe.id,
      ingredient: "醤油",
      amount: "お好みで",
      unit: ""
    )
  end

  recipes = Recipe.where(id: 6..158)
  recipes.each do |recipe|
    Ingredient.create!(
      recipe_id: recipe.id,
      ingredient: "わさび",
      amount: "お好みで",
      unit: ""
    )
  end

  Ingredient.create!(recipe_id: 159, ingredient: "豚肉", amount: "150", unit: "グラム")
  Ingredient.create!(recipe_id: 159, ingredient: "キムチ", amount: "2", unit: "大さじ")
  Ingredient.create!(recipe_id: 159, ingredient: "唐辛子", amount: "お好み", unit: "")
  Ingredient.create!(recipe_id: 159, ingredient: "ごま油", amount: "1", unit: "大さじ")
  Ingredient.create!(recipe_id: 159, ingredient: "塩", amount: "ひと摘み", unit: "")
  Ingredient.create!(recipe_id: 159, ingredient: "胡椒", amount: "ひと摘み", unit: "")

  # 作り方
  Step.create!(recipe_id: 1, step_1: "具材を切る1", step_2: "具材を切る2", step_3: "具材を切る3")
  Step.create!(recipe_id: 2, step_1: "具材を切る1", step_2: "具材を切る2", step_3: "具材を切る3")
  Step.create!(recipe_id: 3, step_1: "具材を切る1", step_2: "具材を切る2", step_3: "具材を切る3")
  Step.create!(recipe_id: 4, step_1: "具材を切る1", step_2: "具材を切る2", step_3: "具材を切る3")
  Step.create!(recipe_id: 5, step_1: "具材を切る1", step_2: "具材を切る2", step_3: "具材を切る3")

  recipes = Recipe.where(id: 6..158)
  recipes.each do |recipe|
    Step.create!(
      recipe_id: recipe.id,
      step_1: "まず炊いた白米に酢を入れまんべんなく混ざるまでしゃもじで着るように混ぜ合わせます。次に混ぜた白米を
      ひと口分手に取りお寿司のシャリの形になるように握ります。",
      step_2: "シャリができたら生魚を食べやすい大きさに薄く切っていきます。",
      step_3: "最後にわさびをお好みでシャリに付けて食べやすい大きさに切ったネタをのせたら完成です！"
    )
  end

  Step.create!(
    recipe_id: 159,
    step_1: "温めたフライパンにごま油を入れ熱し、豚肉を火が通るまで炒めます。",
    step_2: "豚肉に火が通ったら塩、胡椒をひと摘み入れキムチを入れ混ぜ合わせます。",
    step_3: "キムチが温まりムラなく混ざったら完成です！"
  )
  
  # リレーションシップ
  users = User.all
  user  = users.first
  following = users[2..20]
  followers = users[3..30]
  following.each { |followed| user.follow(followed) }
  followers.each { |follower| follower.follow(user) }

  users = User.all
  user  = users.last
  following = users[1..20]
  followers = users[2..30]
  following.each { |followed| user.follow(followed) }
  followers.each { |follower| follower.follow(user) }
