class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  # before_action :redirect_session, only: [:show]
  # before_action :login_new, only: [:new]
  # skip_before_action :login_required, only: [:new, :create]
        
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "新規登録しました.ログインしました!"
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
    else
      flash[:notice] = "登録に失敗しました!"
      render :new
    end
  end

  def show
    @mydog = Mydog.new 
    @mydogs = @user.mydogs
  end
  
  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user), notice: 'プロフィールを編集しました！'
    else
      render :edit
    end
  end

  def following
    @user  = User.find(params[:id])
    @users = @user.following
    render 'show_follow'
  end

  def followers
    @user  = User.find(params[:id])
    @users = @user.followers
    render 'show_follower'
  end

  private

  def user_params
    params.require(:user).permit(
      :password_confirmation,
      :password,:name,
      :email,
      :admin_or_not,
      :image, 
      :image_cache, 
      :profile )
  end 
  
  def set_user
    @user = User.find(params[:id])
  end

  #もしユーザーが登録ユーザーではなく、また、管理者でもなければ権限がありませんと表示させる。
#   def redirect_session
#     if @user.id != current_user.id && !current_user.admin?
#       flash[:notice] = "権限がありません"
#       redirect_to user_path(current_user.id)
#     end
#   end

#   def admin_user
#     if current_user.admin
#       redirect_to(user_path) unless current_user.admin?
#     end
#   end
# #ログイン中のユーザーが会員（管理者）でなければマイページへ飛ぶ
#   def login_new
#     if log_in? && !current_user.admin?
#       redirect_to user_path(current_user)
#     end
#   end
end