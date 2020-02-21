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

rescue_from ActiveRecord::RecordNotFound, with: :render_404
rescue_from ActionController::RoutingError, with: :render_404
rescue_from Exception, with: :render_500

def render_404
  render template: 'errors/error_404', status: 404, layout: 'application', content_type: 'text/html'
end

def render_500
  render template: 'errors/error_500', status: 500, layout: 'application', content_type: 'text/html'
end

end