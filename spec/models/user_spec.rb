require 'rails_helper'

RSpec.describe User, type: :model do
  #名前、メールアドレス、パスワードがあれば有効な状態であること
  it "is valid with a user_name, email, and password" do
    expect(FactoryBot.build(:user)).to be_valid
  end

  #名前がなければ無効な状態であること
  it "is invalid without a user_name" do
    user = FactoryBot.build(:user, user_name: nil)
    user.valid?
    expect(user.errors[:user_name]).to include("を入力してください")
  end

  #メールアドレスがなければ無効な状態であること
  it "is invalid without an email" do
    user = FactoryBot.build(:user, email: nil)
    user.valid?
    expect(user.errors[:email]).to include("を入力してください")
  end

  #パスワードがなければ無効な状態であること
  it "is invalid without a password" do
    user = FactoryBot.build(:user, password: nil)
    user.valid?
    expect(user.errors[:password]).to include("を入力してください")
  end

  #重複したメールアドレスなら無効な状態であること
  it "is invalid with a duplicate email" do
    FactoryBot.create(:user, email: "ben@gmail.com")
    user = FactoryBot.build(:user, email: "ben@gmail.com")
    user.valid?
    expect(user.errors[:email]).to include("はすでに存在します")
  end

  #パスワードの文字数を指定する
  describe "specify the number of characters in the password" do
    before do
      password_1 = "a" * 8
      @user_1 = FactoryBot.build(:user, password: password_1)

      password_2 = "a" * 7
      @user_2 = FactoryBot.build(:user, password: password_2)

      password_3 = "a" * 21
      @user_3 = FactoryBot.build(:user, password: password_3)
    end

    #パスワードが8文字以上20文字以内のとき
    context "when the password is 8 to 20 characters" do
      #有効であること
      it "password is valid" do
        @user_1.valid?
        expect(@user_1).to be_valid
      end
    end

    #パスワードが7文字以下のとき
    context "when the password is 7 characters or less" do
      #無効であること
      it "password is invalid" do
        @user_2.valid?
        expect(@user_2.errors[:password]).to include("は8文字以上で入力してください")
      end
    end
    
    #パスワードが21文字以上のとき
    context "when the password is 21 characters or more" do
      #無効であること
      it "password is invalid" do
        @user_3.valid?
        expect(@user_3.errors[:password]).to include("は20文字以内で入力してください")
      end
    end
  end
end
