class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :log_in?
  # before_action :login_required
  before_action :current_user
  before_action :current_dogrun



  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def current_dogrun
    @current_dogrun = params[:id]
  end
  # def login_required
  #   redirect_to root_path unless current_user
  # end

  # #ログインしていないときやマイページなどに飛ばないようにする
  def authenticate_user
    if current_user == nil
      redirect_to root_path
    end
  end

  def admin?
    @user.admin
  end
  
  def log_in?
    @current_user.present?
  end
  
end