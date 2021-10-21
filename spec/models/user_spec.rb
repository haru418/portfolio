require 'rails_helper'

RSpec.describe User, type: :model do
  #名前、メールアドレス、パスワードがあれば有効な状態であること
  it "is valid with a user_name, email, and password" do
    user = User.new(
      user_name: "ben",
      email: "tester@example.com",
      password: "00000000"
    )
    expect(user).to be_valid
  end

  #名前がなければ無効な状態であること
  it "is invalid without a user_name" do
    user = User.new(user_name: nil)
    user.valid?
    expect(user.errors[:user_name]).to include("を入力してください")
  end

  #メールアドレスがなければ無効な状態であること
  it "is invalid without an email" do
    user = User.new(email: nil)
    user.valid?
    expect(user.errors[:email]).to include("を入力してください")
  end

  #パスワードがなければ無効な状態であること
  it "is invalid without a password" do
    user = User.new(password: nil)
    user.valid?
    expect(user.errors[:password]).to include("を入力してください")
  end
  #重複したメールアドレスなら無効な状態であること
  it "is invalid with a duplicate email" do
    user = User.create(
      user_name: "bell",
      email: "tester@example.com",
      password: "00000000"
    )
    user = User.new(
      user_name: "may",
      email: "tester@example.com",
      password: "00000000"
    )
    user.valid?
    expect(user.errors[:email]).to include("はすでに存在します")
  end
end
