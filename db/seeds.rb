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

  User.create!(user_name: "ゲスト", email: "guest@example.com", image: "user_4.png", password: "foobar")
  
  # レシピ
  150.times do |n|
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

  # 材料
  recipes = Recipe.where(id: 1..150)
  recipes.each do |recipe|
    Ingredient.create!(
      recipe_id: recipe.id,
      ingredient: "生魚",
      amount: "150",
      unit: "グラム"
    )
  end

  recipes = Recipe.where(id: 1..150)
  recipes.each do |recipe|
    Ingredient.create!(
      recipe_id: recipe.id,
      ingredient: "白米",
      amount: "1",
      unit: "合"
    )
  end

  recipes = Recipe.where(id: 1..150)
  recipes.each do |recipe|
    Ingredient.create!(
      recipe_id: recipe.id,
      ingredient: "お酢",
      amount: "3",
      unit: "大さじ"
    )
  end

  recipes = Recipe.where(id: 1..150)
  recipes.each do |recipe|
    Ingredient.create!(
      recipe_id: recipe.id,
      ingredient: "醤油",
      amount: "お好みで",
      unit: ""
    )
  end

  recipes = Recipe.where(id: 1..150)
  recipes.each do |recipe|
    Ingredient.create!(
      recipe_id: recipe.id,
      ingredient: "わさび",
      amount: "お好みで",
      unit: ""
    )
  end

  # 作り方
  recipes = Recipe.where(id: 1..150)
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

  users = User.all
  user  = users.last
  following = users[1..20]
  followers = users[2..30]
  following.each { |followed| user.follow(followed) }
  followers.each { |follower| follower.follow(user) }
