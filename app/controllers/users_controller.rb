class UsersController < ApplicationController
  before_action :authenticate_user, only: [:index, :show, :edit, :update, :following, :followers]
  before_action :limitation_login_user, only: [:new, :create, :login_page, :login]
  before_action :limitation_correct_user, only: [:edit, :update]
  
  def index
    @user = User.where("user_name LIKE ?", "%#{params[:user_name]}%")
    @users = User.paginate(page: params[:page])
    if params[:user_name].present?
      @user
    else
      User.none
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(
      user_name: params[:user_name],
      email: params[:email],
      image: "default.png",
      password: params[:password]
    )
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "ユーザーを作成しました"
      redirect_to user_url @user
    else
      render :new
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.user_name = params[:user_name]
    @user.email = params[:email]
    if params[:image]
      @user.image = "user_#{@user.id}.png"
      File.binwrite("public/user_images/#{@user.image}", params[:image].read)
    end
    if @user.save
      redirect_to user_url @user
      flash[:notice] = "ユーザー情報を編集しました"
    else
      render :edit
    end
  end
  
  def lonin_page
  end
  
  def login
    @user = User.find_by(email: params[:email], password: params[:password])
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to posts_index_url
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @email = params[:email]
      @password = params[:password]
      render :login_page
    end
  end
  
  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to login_url
  end
  
  def likes
    @user = User.find(params[:id])
    @likes = Like.where(user_id: @user.id)
  end

  def following
    @title = "フォロー中"
    @user = User.find(params[:id])
    @users = @user.following.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "フォロワー"
    @user = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end
  
  # def search
  #   if params[:user_name].present?
  #     @users = User.where("user_name LIKE ?", "%#{params[:user_name]}%")
  #   else
  #     @users = User.none
  #   end
  # end
  
  def limitation_correct_user
    unless @current_user.id == params[:id].to_i
      flash[:notice] = "他のユーザーの編集はできません"
      redirect_to posts_index_url
    end
  end
end
