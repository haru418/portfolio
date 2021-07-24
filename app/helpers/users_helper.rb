module UsersHelper

  # 渡されたユーザーがログイン済みユーザーであればtrueを返す
  def set_current_user?(user)
    user == set_current_user
  end

  #ログイン中のユーザーを取得する 
  def set_current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  # ユーザーがログインしていればtrue、その他ならfalseを返す
  def logged_in?
    !set_current_user.nil?
  end
end
