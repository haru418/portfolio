require 'faker'
# coding:utf-8

 # ユーザーを一人ずつ作成します。
  User.create!(user_name: "後藤歩", email: "ayumu@example.com", image: "user_1.png", password: "foobar")
  User.create!(user_name: "佐々木享", email: "toru@example.com", image: "user_2.png", password: "foobar")
  User.create!(user_name: "川上憲伸", email: "kenshin@example.com", image: "user_3.png", password: "foobar")
  User.create!(user_name: "野口太郎", email: "taro@example.com", image: "user_4.png", password: "foobar")
  User.create!(user_name: "板垣健太", email: "kenta@example.com", image: "user_5.png", password: "foobar")
  User.create!(user_name: "大河正樹", email: "masaki@example.com", image: "user_6.png", password: "foobar")
  User.create!(user_name: "東野春樹", email: "haruki@example.com", image: "user_7.jpg", password: "foobar")
  User.create!(user_name: "鈴木達也", email: "tatsuya@example.com", image: "user_8.png", password: "foobar")
  User.create!(user_name: "上村一真", email: "kazuma@example.com", image: "user_9.jpg", password: "foobar")
  User.create!(user_name: "ゲスト", email: "guest@example.com", image: "user_10.jpg", password: "foobar")
  
  # レシピ
  Recipe.create!(user_id: 1, cooking_name: "大根の煮物",
  cooking_image: File.open("./app/assets/images/boiled_food.jpg"),
  comment: "大根に煮汁が染み込んでて美味しかった！コツは長い時間煮込むことです。")
  Recipe.create!(user_id: 2, cooking_name: "鶏肉のトマトソース煮込み",
  cooking_image: File.open("./app/assets/images/tomato.jpg"),
  comment: "ニンニクが効いて刺激のある味で美味しかった。これは僕のお箱になりそう。")
  Recipe.create!(user_id: 3, cooking_name: "野菜炒め",
  cooking_image: File.open("./app/assets/images/fried_vegetables.jpg"),
  comment: "定番だけどやっぱり美味しい！短い時間で簡単に作れるので嬉しい。")
  Recipe.create!(user_id: 4, cooking_name: "肉豆腐",
  cooking_image: File.open("./app/assets/images/beef_tofu.jpg"),
  comment: "肉と豆腐の相性が抜群！タンパク質がたくさん摂れます。")
  Recipe.create!(user_id: 5, cooking_name: "牛ステーキ",
  cooking_image: File.open("./app/assets/images/beef.jpg"),
  comment: "やっぱりステーキはミディアム！ソースも美味しく作れたので良かった。")
  Recipe.create!(user_id: 6, cooking_name: "青椒肉絲",
  cooking_image: File.open("./app/assets/images/pepper_steak.jpg"),
  comment: "中華の中でこれが一番好き！どうして中華はこんなに病みつきになるんだろう。")
  Recipe.create!(user_id: 7, cooking_name: "シーザーサラダ",
  cooking_image: File.open("./app/assets/images/salad.jpg"),
  comment: "サラダはやっぱりシーザーサラダ！野菜のシャキシャキ食感も好き。")
  Recipe.create!(user_id: 8, cooking_name: "湯豆腐",
  cooking_image: File.open("./app/assets/images/tofu.jpg"),
  comment: "出汁が効いてて最高に美味しかった！だし汁まで飲んでしまった。")
  Recipe.create!(user_id: 9, cooking_name: "豚キムチ",
  cooking_image: File.open("./app/assets/images/prok_kimchi.jpg"),
  comment: "豚肉とキムチの相性抜群！キムチは無添加キムチです。")
  Recipe.create!(user_id: 10, cooking_name: "肉野菜炒め",
  cooking_image: File.open("./app/assets/images/meat_vegetables.jpg"),
  comment: "肉と野菜の歯応えが良い感じ。野菜は多い方が好き！")
  Recipe.create!(user_id: 2, cooking_name: "大根の煮物",
  cooking_image: File.open("./app/assets/images/boiled_food.jpg"),
  comment: "大根に煮汁が染み込んでて美味しかった！コツは長い時間煮込むことです。")
  Recipe.create!(user_id: 3, cooking_name: "鶏肉のトマトソース煮込み",
  cooking_image: File.open("./app/assets/images/tomato.jpg"),
  comment: "ニンニクが効いて刺激のある味で美味しかった。これは僕のお箱になりそう。")
  Recipe.create!(user_id: 4, cooking_name: "野菜炒め",
  cooking_image: File.open("./app/assets/images/fried_vegetables.jpg"),
  comment: "定番だけどやっぱり美味しい！短い時間で簡単に作れるので嬉しい。")
  Recipe.create!(user_id: 5, cooking_name: "肉豆腐",
  cooking_image: File.open("./app/assets/images/beef_tofu.jpg"),
  comment: "肉と豆腐の相性が抜群！タンパク質がたくさん摂れます。")
  Recipe.create!(user_id: 6, cooking_name: "牛ステーキ",
  cooking_image: File.open("./app/assets/images/beef.jpg"),
  comment: "やっぱりステーキはミディアム！ソースも美味しく作れたので良かった。")
  Recipe.create!(user_id: 7, cooking_name: "青椒肉絲",
  cooking_image: File.open("./app/assets/images/pepper_steak.jpg"),
  comment: "中華の中でこれが一番好き！どうして中華はこんなに病みつきになるんだろう。")
  Recipe.create!(user_id: 8, cooking_name: "シーザーサラダ",
  cooking_image: File.open("./app/assets/images/salad.jpg"),
  comment: "サラダはやっぱりシーザーサラダ！野菜のシャキシャキ食感も好き。")
  Recipe.create!(user_id: 9, cooking_name: "湯豆腐",
  cooking_image: File.open("./app/assets/images/tofu.jpg"),
  comment: "出汁が効いてて最高に美味しかった！だし汁まで飲んでしまった。")
  Recipe.create!(user_id: 10, cooking_name: "豚キムチ",
  cooking_image: File.open("./app/assets/images/prok_kimchi.jpg"),
  comment: "豚肉とキムチの相性抜群！キムチは無添加キムチです。")
  Recipe.create!(user_id: 1, cooking_name: "肉野菜炒め",
  cooking_image: File.open("./app/assets/images/meat_vegetables.jpg"),
  comment: "肉と野菜の歯応えが良い感じ。野菜は多い方が好き！")
  Recipe.create!(user_id: 3, cooking_name: "大根の煮物",
  cooking_image: File.open("./app/assets/images/boiled_food.jpg"),
  comment: "大根に煮汁が染み込んでて美味しかった！コツは長い時間煮込むことです。")
  Recipe.create!(user_id: 4, cooking_name: "鶏肉のトマトソース煮込み",
  cooking_image: File.open("./app/assets/images/tomato.jpg"),
  comment: "ニンニクが効いて刺激のある味で美味しかった。これは僕のお箱になりそう。")
  Recipe.create!(user_id: 5, cooking_name: "野菜炒め",
  cooking_image: File.open("./app/assets/images/fried_vegetables.jpg"),
  comment: "定番だけどやっぱり美味しい！短い時間で簡単に作れるので嬉しい。")
  Recipe.create!(user_id: 6, cooking_name: "肉豆腐",
  cooking_image: File.open("./app/assets/images/beef_tofu.jpg"),
  comment: "肉と豆腐の相性が抜群！タンパク質がたくさん摂れます。")
  Recipe.create!(user_id: 7, cooking_name: "牛ステーキ",
  cooking_image: File.open("./app/assets/images/beef.jpg"),
  comment: "やっぱりステーキはミディアム！ソースも美味しく作れたので良かった。")
  Recipe.create!(user_id: 8, cooking_name: "青椒肉絲",
  cooking_image: File.open("./app/assets/images/pepper_steak.jpg"),
  comment: "中華の中でこれが一番好き！どうして中華はこんなに病みつきになるんだろう。")
  Recipe.create!(user_id: 9, cooking_name: "シーザーサラダ",
  cooking_image: File.open("./app/assets/images/salad.jpg"),
  comment: "サラダはやっぱりシーザーサラダ！野菜のシャキシャキ食感も好き。")
  Recipe.create!(user_id: 10, cooking_name: "湯豆腐",
  cooking_image: File.open("./app/assets/images/tofu.jpg"),
  comment: "出汁が効いてて最高に美味しかった！だし汁まで飲んでしまった。")
  Recipe.create!(user_id: 1, cooking_name: "豚キムチ",
  cooking_image: File.open("./app/assets/images/prok_kimchi.jpg"),
  comment: "豚肉とキムチの相性抜群！キムチは無添加キムチです。")
  Recipe.create!(user_id: 2, cooking_name: "肉野菜炒め",
  cooking_image: File.open("./app/assets/images/meat_vegetables.jpg"),
  comment: "肉と野菜の歯応えが良い感じ。野菜は多い方が好き！")

  # 材料
  Ingredient.create!(recipe_id: 1, ingredient: "大根", amount: "1/2", unit: "個")
  Ingredient.create!(recipe_id: 1, ingredient: "鶏肉", amount: "200", unit: "グラム")
  Ingredient.create!(recipe_id: 1, ingredient: "にんじん", amount: "1", unit: "本")
  Ingredient.create!(recipe_id: 1, ingredient: "めんつゆ", amount: "2", unit: "大さじ")
  Ingredient.create!(recipe_id: 2, ingredient: "鶏肉", amount: "200", unit: "グラム")
  Ingredient.create!(recipe_id: 2, ingredient: "トマト缶", amount: "1", unit: "個")
  Ingredient.create!(recipe_id: 2, ingredient: "玉ねぎ", amount: "1", unit: "個")
  Ingredient.create!(recipe_id: 2, ingredient: "にんじん", amount: "1", unit: "本")
  Ingredient.create!(recipe_id: 3, ingredient: "キャベツ", amount: "1/4", unit: "個")
  Ingredient.create!(recipe_id: 3, ingredient: "玉ねぎ", amount: "1/2", unit: "個")
  Ingredient.create!(recipe_id: 3, ingredient: "にんじん", amount: "1/2", unit: "本")
  Ingredient.create!(recipe_id: 3, ingredient: "だしの素", amount: "1", unit: "小さじ")
  Ingredient.create!(recipe_id: 4, ingredient: "牛肉", amount: "200", unit: "グラム")
  Ingredient.create!(recipe_id: 4, ingredient: "豆腐", amount: "300", unit: "グラム")
  Ingredient.create!(recipe_id: 4, ingredient: "めんつゆ", amount: "2", unit: "大さじ")
  Ingredient.create!(recipe_id: 4, ingredient: "砂糖", amount: "2", unit: "小さじ")
  Ingredient.create!(recipe_id: 5, ingredient: "牛ステーキ肉", amount: "200", unit: "")
  Ingredient.create!(recipe_id: 5, ingredient: "牛脂", amount: "1", unit: "個")
  Ingredient.create!(recipe_id: 5, ingredient: "塩", amount: "少々", unit: "")
  Ingredient.create!(recipe_id: 5, ingredient: "胡椒", amount: "少々", unit: "")
  Ingredient.create!(recipe_id: 6, ingredient: "牛肉", amount: "150", unit: "グラム")
  Ingredient.create!(recipe_id: 6, ingredient: "ピーマン", amount: "2", unit: "個")
  Ingredient.create!(recipe_id: 6, ingredient: "細切り竹の子", amount: "150", unit: "グラム")
  Ingredient.create!(recipe_id: 6, ingredient: "パプリカ", amount: "2", unit: "個")
  Ingredient.create!(recipe_id: 7, ingredient: "レタス", amount: "1/2", unit: "個")
  Ingredient.create!(recipe_id: 7, ingredient: "玉ねぎ", amount: "1/4", unit: "個")
  Ingredient.create!(recipe_id: 7, ingredient: "クルトン", amount: "お好みで", unit: "")
  Ingredient.create!(recipe_id: 7, ingredient: "シーザードレッシング", amount: "お好みで", unit: "")
  Ingredient.create!(recipe_id: 8, ingredient: "豆腐", amount: "300", unit: "グラム")
  Ingredient.create!(recipe_id: 8, ingredient: "だしの素", amount: "1", unit: "大さじ")
  Ingredient.create!(recipe_id: 8, ingredient: "小ネギ", amount: "お好みで", unit: "")
  Ingredient.create!(recipe_id: 9, ingredient: "豚肉", amount: "150", unit: "グラム")
  Ingredient.create!(recipe_id: 9, ingredient: "キムチ", amount: "70", unit: "グラム")
  Ingredient.create!(recipe_id: 9, ingredient: "ごま油", amount: "1", unit: "大さじ")
  Ingredient.create!(recipe_id: 9, ingredient: "塩", amount: "少々", unit: "")
  Ingredient.create!(recipe_id: 10, ingredient: "豚肉細切れ", amount: "150", unit: "グラム")
  Ingredient.create!(recipe_id: 10, ingredient: "キャベツ", amount: "1/4", unit: "個")
  Ingredient.create!(recipe_id: 10, ingredient: "玉ねぎ", amount: "1/2", unit: "個")
  Ingredient.create!(recipe_id: 10, ingredient: "にんじん", amount: "1/2", unit: "本")
  Ingredient.create!(recipe_id: 11, ingredient: "大根", amount: "1/2", unit: "個")
  Ingredient.create!(recipe_id: 11, ingredient: "鶏肉", amount: "200", unit: "グラム")
  Ingredient.create!(recipe_id: 11, ingredient: "にんじん", amount: "1", unit: "本")
  Ingredient.create!(recipe_id: 11, ingredient: "めんつゆ", amount: "2", unit: "大さじ")
  Ingredient.create!(recipe_id: 12, ingredient: "鶏肉", amount: "200", unit: "グラム")
  Ingredient.create!(recipe_id: 12, ingredient: "トマト缶", amount: "1", unit: "個")
  Ingredient.create!(recipe_id: 12, ingredient: "玉ねぎ", amount: "1", unit: "個")
  Ingredient.create!(recipe_id: 12, ingredient: "にんじん", amount: "1", unit: "本")
  Ingredient.create!(recipe_id: 13, ingredient: "キャベツ", amount: "1/4", unit: "個")
  Ingredient.create!(recipe_id: 13, ingredient: "玉ねぎ", amount: "1/2", unit: "個")
  Ingredient.create!(recipe_id: 13, ingredient: "にんじん", amount: "1/2", unit: "本")
  Ingredient.create!(recipe_id: 13, ingredient: "だしの素", amount: "1", unit: "小さじ")
  Ingredient.create!(recipe_id: 14, ingredient: "牛肉", amount: "200", unit: "グラム")
  Ingredient.create!(recipe_id: 14, ingredient: "豆腐", amount: "300", unit: "グラム")
  Ingredient.create!(recipe_id: 14, ingredient: "めんつゆ", amount: "2", unit: "大さじ")
  Ingredient.create!(recipe_id: 14, ingredient: "砂糖", amount: "2", unit: "小さじ")
  Ingredient.create!(recipe_id: 15, ingredient: "牛ステーキ肉", amount: "200", unit: "")
  Ingredient.create!(recipe_id: 15, ingredient: "牛脂", amount: "1", unit: "個")
  Ingredient.create!(recipe_id: 15, ingredient: "塩", amount: "少々", unit: "")
  Ingredient.create!(recipe_id: 15, ingredient: "胡椒", amount: "少々", unit: "")
  Ingredient.create!(recipe_id: 16, ingredient: "牛肉", amount: "150", unit: "グラム")
  Ingredient.create!(recipe_id: 16, ingredient: "ピーマン", amount: "2", unit: "個")
  Ingredient.create!(recipe_id: 16, ingredient: "細切り竹の子", amount: "150", unit: "グラム")
  Ingredient.create!(recipe_id: 16, ingredient: "パプリカ", amount: "2", unit: "個")
  Ingredient.create!(recipe_id: 17, ingredient: "レタス", amount: "1/2", unit: "個")
  Ingredient.create!(recipe_id: 17, ingredient: "玉ねぎ", amount: "1/4", unit: "個")
  Ingredient.create!(recipe_id: 17, ingredient: "クルトン", amount: "お好みで", unit: "")
  Ingredient.create!(recipe_id: 17, ingredient: "シーザードレッシング", amount: "お好みで", unit: "")
  Ingredient.create!(recipe_id: 18, ingredient: "豆腐", amount: "300", unit: "グラム")
  Ingredient.create!(recipe_id: 18, ingredient: "だしの素", amount: "1", unit: "大さじ")
  Ingredient.create!(recipe_id: 18, ingredient: "小ネギ", amount: "お好みで", unit: "")
  Ingredient.create!(recipe_id: 19, ingredient: "豚肉", amount: "150", unit: "グラム")
  Ingredient.create!(recipe_id: 19, ingredient: "キムチ", amount: "70", unit: "グラム")
  Ingredient.create!(recipe_id: 19, ingredient: "ごま油", amount: "1", unit: "大さじ")
  Ingredient.create!(recipe_id: 19, ingredient: "塩", amount: "少々", unit: "")
  Ingredient.create!(recipe_id: 20, ingredient: "豚肉細切れ", amount: "150", unit: "グラム")
  Ingredient.create!(recipe_id: 20, ingredient: "キャベツ", amount: "1/4", unit: "個")
  Ingredient.create!(recipe_id: 20, ingredient: "玉ねぎ", amount: "1/2", unit: "個")
  Ingredient.create!(recipe_id: 20, ingredient: "にんじん", amount: "1/2", unit: "本")
  Ingredient.create!(recipe_id: 21, ingredient: "大根", amount: "1/2", unit: "個")
  Ingredient.create!(recipe_id: 21, ingredient: "鶏肉", amount: "200", unit: "グラム")
  Ingredient.create!(recipe_id: 21, ingredient: "にんじん", amount: "1", unit: "本")
  Ingredient.create!(recipe_id: 21, ingredient: "めんつゆ", amount: "2", unit: "大さじ")
  Ingredient.create!(recipe_id: 22, ingredient: "鶏肉", amount: "200", unit: "グラム")
  Ingredient.create!(recipe_id: 22, ingredient: "トマト缶", amount: "1", unit: "個")
  Ingredient.create!(recipe_id: 22, ingredient: "玉ねぎ", amount: "1", unit: "個")
  Ingredient.create!(recipe_id: 22, ingredient: "にんじん", amount: "1", unit: "本")
  Ingredient.create!(recipe_id: 23, ingredient: "キャベツ", amount: "1/4", unit: "個")
  Ingredient.create!(recipe_id: 23, ingredient: "玉ねぎ", amount: "1/2", unit: "個")
  Ingredient.create!(recipe_id: 23, ingredient: "にんじん", amount: "1/2", unit: "本")
  Ingredient.create!(recipe_id: 23, ingredient: "だしの素", amount: "1", unit: "小さじ")
  Ingredient.create!(recipe_id: 24, ingredient: "牛肉", amount: "200", unit: "グラム")
  Ingredient.create!(recipe_id: 24, ingredient: "豆腐", amount: "300", unit: "グラム")
  Ingredient.create!(recipe_id: 24, ingredient: "めんつゆ", amount: "2", unit: "大さじ")
  Ingredient.create!(recipe_id: 24, ingredient: "砂糖", amount: "2", unit: "小さじ")
  Ingredient.create!(recipe_id: 25, ingredient: "牛ステーキ肉", amount: "200", unit: "")
  Ingredient.create!(recipe_id: 25, ingredient: "牛脂", amount: "1", unit: "個")
  Ingredient.create!(recipe_id: 25, ingredient: "塩", amount: "少々", unit: "")
  Ingredient.create!(recipe_id: 25, ingredient: "胡椒", amount: "少々", unit: "")
  Ingredient.create!(recipe_id: 26, ingredient: "牛肉", amount: "150", unit: "グラム")
  Ingredient.create!(recipe_id: 26, ingredient: "ピーマン", amount: "2", unit: "個")
  Ingredient.create!(recipe_id: 26, ingredient: "細切り竹の子", amount: "150", unit: "グラム")
  Ingredient.create!(recipe_id: 26, ingredient: "パプリカ", amount: "2", unit: "個")
  Ingredient.create!(recipe_id: 27, ingredient: "レタス", amount: "1/2", unit: "個")
  Ingredient.create!(recipe_id: 27, ingredient: "玉ねぎ", amount: "1/4", unit: "個")
  Ingredient.create!(recipe_id: 27, ingredient: "クルトン", amount: "お好みで", unit: "")
  Ingredient.create!(recipe_id: 27, ingredient: "シーザードレッシング", amount: "お好みで", unit: "")
  Ingredient.create!(recipe_id: 28, ingredient: "豆腐", amount: "300", unit: "グラム")
  Ingredient.create!(recipe_id: 28, ingredient: "だしの素", amount: "1", unit: "大さじ")
  Ingredient.create!(recipe_id: 28, ingredient: "小ネギ", amount: "お好みで", unit: "")
  Ingredient.create!(recipe_id: 29, ingredient: "豚肉", amount: "150", unit: "グラム")
  Ingredient.create!(recipe_id: 29, ingredient: "キムチ", amount: "70", unit: "グラム")
  Ingredient.create!(recipe_id: 29, ingredient: "ごま油", amount: "1", unit: "大さじ")
  Ingredient.create!(recipe_id: 29, ingredient: "塩", amount: "少々", unit: "")
  Ingredient.create!(recipe_id: 30, ingredient: "豚肉細切れ", amount: "150", unit: "グラム")
  Ingredient.create!(recipe_id: 30, ingredient: "キャベツ", amount: "1/4", unit: "個")
  Ingredient.create!(recipe_id: 30, ingredient: "玉ねぎ", amount: "1/2", unit: "個")
  Ingredient.create!(recipe_id: 30, ingredient: "にんじん", amount: "1/2", unit: "本")

  # 作り方
  Step.create!(
    recipe_id: 1, step_1: "具材を食べやすい大きさに切ります。",
    step_2: "具材全てを鍋に入れて火にかける。煮立ったら弱火で具材が柔らかくなるまで火にかける。",
    step_3: "爪楊枝がスッと刺さるくらい柔らかくなったら完成！"
  )
  Step.create!(
    recipe_id: 2,
    step_1: "具材を食べやすい大きさに切ります。",
    step_2: "具材全てを鍋に入れて火にかける。煮立ったら弱火で具材が柔らかくなるまで火にかける。",
    step_3: "鶏肉に火が通り、野菜が食べやすい柔らかさになったら完成！"
  )
  Step.create!(
    recipe_id: 3,
    step_1: "具材を食べやすい大きさに切ります。",
    step_2: "具材をフライパンに入れ、玉ねぎがしんなりするまで炒めます。",
    step_3: "お好みで味付けしたら完成です！"
  )
  Step.create!(
    recipe_id: 4,
    step_1: "豚肉、豆腐は1口大に切ります。玉ねぎは5mm〜1cm位に切ります。",
    step_2: "フライパンに牛肉を入れて炒めます。",
    step_3: "肉に色がついたら豆腐と調味料を入れ煮立たせたら完成です！"
  )
  Step.create!(
    recipe_id: 5,
    step_1: "牛脂をフライパンの上で熱します。",
    step_2: "焼き加減を見ながらひっくり返しながら焼きます。",
    step_3: "自分の好みの焼き加減まで焼いて塩胡椒を振ったら完成です！"
  )
  Step.create!(
    recipe_id: 6,
    step_1: "牛肉、ピーマン、パプリカを細切りにします。",
    step_2: "具材をフライパンに入れ中火で炒めます。",
    step_3: "調味料で味付けをし、満遍なく火が通ったら完成です！"
  )
  Step.create!(
    recipe_id: 7,
    step_1: "レタスを食べやすい多きさにちぎり、玉ねぎは細切りにします。",
    step_2: "レタスを皿にのせ玉ねぎとクルトンをのせます。",
    step_3: "シーザードレッシングをかけたら完成です！"
  )
  Step.create!(
    recipe_id: 8,
    step_1: "水にだしの素を入れ煮立たせます。",
    step_2: "煮立ったら豆腐を入れ弱火で５分に混みます。",
    step_3: "豆腐に火が通ったら完成です！"
  )
  Step.create!(
    recipe_id: 9,
    step_1: "豚肉を食べやすい大きさに切ります。",
    step_2: "プライパンに豚肉を入れ中火で炒めます。",
    step_3: "豚肉に火が通ったらキムチを入れ混ぜ合わせたら完成です！"
  )
  Step.create!(
    recipe_id: 10,
    step_1: "肉と野菜を食べやすい大きさに切ります。",
    step_2: "フライパンに肉を入れ中火で炒めます。肉に火が通ったら野菜を入れ玉ねぎがしんなりするまで炒めます。",
    step_3: "玉ねぎがしんなりしたら味付けをして完成です！"
  )
  Step.create!(
    recipe_id: 11, step_1: "具材を食べやすい大きさに切ります。",
    step_2: "具材全てを鍋に入れて火にかける。煮立ったら弱火で具材が柔らかくなるまで火にかける。",
    step_3: "爪楊枝がスッと刺さるくらい柔らかくなったら完成！"
  )
  Step.create!(
    recipe_id: 12,
    step_1: "具材を食べやすい大きさに切ります。",
    step_2: "具材全てを鍋に入れて火にかける。煮立ったら弱火で具材が柔らかくなるまで火にかける。",
    step_3: "鶏肉に火が通り、野菜が食べやすい柔らかさになったら完成！"
  )
  Step.create!(
    recipe_id: 13,
    step_1: "具材を食べやすい大きさに切ります。",
    step_2: "具材をフライパンに入れ、玉ねぎがしんなりするまで炒めます。",
    step_3: "お好みで味付けしたら完成です！"
  )
  Step.create!(
    recipe_id: 14,
    step_1: "豚肉、豆腐は1口大に切ります。玉ねぎは5mm〜1cm位に切ります。",
    step_2: "フライパンに牛肉を入れて炒めます。",
    step_3: "肉に色がついたら豆腐と調味料を入れ煮立たせたら完成です！"
  )
  Step.create!(
    recipe_id: 15,
    step_1: "牛脂をフライパンの上で熱します。",
    step_2: "焼き加減を見ながらひっくり返しながら焼きます。",
    step_3: "自分の好みの焼き加減まで焼いて塩胡椒を振ったら完成です！"
  )
  Step.create!(
    recipe_id: 16,
    step_1: "牛肉、ピーマン、パプリカを細切りにします。",
    step_2: "具材をフライパンに入れ中火で炒めます。",
    step_3: "調味料で味付けをし、満遍なく火が通ったら完成です！"
  )
  Step.create!(
    recipe_id: 17,
    step_1: "レタスを食べやすい多きさにちぎり、玉ねぎは細切りにします。",
    step_2: "レタスを皿にのせ玉ねぎとクルトンをのせます。",
    step_3: "シーザードレッシングをかけたら完成です！"
  )
  Step.create!(
    recipe_id: 18,
    step_1: "水にだしの素を入れ煮立たせます。",
    step_2: "煮立ったら豆腐を入れ弱火で５分に混みます。",
    step_3: "豆腐に火が通ったら完成です！"
  )
  Step.create!(
    recipe_id: 19,
    step_1: "豚肉を食べやすい大きさに切ります。",
    step_2: "プライパンに豚肉を入れ中火で炒めます。",
    step_3: "豚肉に火が通ったらキムチを入れ混ぜ合わせたら完成です！"
  )
  Step.create!(
    recipe_id: 20,
    step_1: "肉と野菜を食べやすい大きさに切ります。",
    step_2: "フライパンに肉を入れ中火で炒めます。肉に火が通ったら野菜を入れ玉ねぎがしんなりするまで炒めます。",
    step_3: "玉ねぎがしんなりしたら味付けをして完成です！"
  )
  Step.create!(
    recipe_id: 21, step_1: "具材を食べやすい大きさに切ります。",
    step_2: "具材全てを鍋に入れて火にかける。煮立ったら弱火で具材が柔らかくなるまで火にかける。",
    step_3: "爪楊枝がスッと刺さるくらい柔らかくなったら完成！"
  )
  Step.create!(
    recipe_id: 22,
    step_1: "具材を食べやすい大きさに切ります。",
    step_2: "具材全てを鍋に入れて火にかける。煮立ったら弱火で具材が柔らかくなるまで火にかける。",
    step_3: "鶏肉に火が通り、野菜が食べやすい柔らかさになったら完成！"
  )
  Step.create!(
    recipe_id: 23,
    step_1: "具材を食べやすい大きさに切ります。",
    step_2: "具材をフライパンに入れ、玉ねぎがしんなりするまで炒めます。",
    step_3: "お好みで味付けしたら完成です！"
  )
  Step.create!(
    recipe_id: 24,
    step_1: "豚肉、豆腐は1口大に切ります。玉ねぎは5mm〜1cm位に切ります。",
    step_2: "フライパンに牛肉を入れて炒めます。",
    step_3: "肉に色がついたら豆腐と調味料を入れ煮立たせたら完成です！"
  )
  Step.create!(
    recipe_id: 25,
    step_1: "牛脂をフライパンの上で熱します。",
    step_2: "焼き加減を見ながらひっくり返しながら焼きます。",
    step_3: "自分の好みの焼き加減まで焼いて塩胡椒を振ったら完成です！"
  )
  Step.create!(
    recipe_id: 26,
    step_1: "牛肉、ピーマン、パプリカを細切りにします。",
    step_2: "具材をフライパンに入れ中火で炒めます。",
    step_3: "調味料で味付けをし、満遍なく火が通ったら完成です！"
  )
  Step.create!(
    recipe_id: 27,
    step_1: "レタスを食べやすい多きさにちぎり、玉ねぎは細切りにします。",
    step_2: "レタスを皿にのせ玉ねぎとクルトンをのせます。",
    step_3: "シーザードレッシングをかけたら完成です！"
  )
  Step.create!(
    recipe_id: 28,
    step_1: "水にだしの素を入れ煮立たせます。",
    step_2: "煮立ったら豆腐を入れ弱火で５分に混みます。",
    step_3: "豆腐に火が通ったら完成です！"
  )
  Step.create!(
    recipe_id: 29,
    step_1: "豚肉を食べやすい大きさに切ります。",
    step_2: "プライパンに豚肉を入れ中火で炒めます。",
    step_3: "豚肉に火が通ったらキムチを入れ混ぜ合わせたら完成です！"
  )
  Step.create!(
    recipe_id: 30,
    step_1: "肉と野菜を食べやすい大きさに切ります。",
    step_2: "フライパンに肉を入れ中火で炒めます。肉に火が通ったら野菜を入れ玉ねぎがしんなりするまで炒めます。",
    step_3: "玉ねぎがしんなりしたら味付けをして完成です！"
  )

  # リレーションシップ
  users = User.all
  user  = users.first
  following = users[2..9]
  followers = users[3..8]
  following.each { |followed| user.follow(followed) }
  followers.each { |follower| follower.follow(user) }

  users = User.all
  user  = users.last
  following = users[1..8]
  followers = users[2..7]
  following.each { |followed| user.follow(followed) }
  followers.each { |follower| follower.follow(user) }
