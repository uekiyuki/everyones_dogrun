class MydogsController < ApplicationController
  before_action :set_mydog,only: [:show, :edit, :update, :destroy] 
    
  def index
    @mydogs = Mydog.all
  end
  
  def show
  end

  def new
    @mydog = Mydog.new
  end
  
  def create
    @mydog = Mydog.new(mydog_params)
    if @mydog.save
      flash[:notice] = "愛犬を登録しました."
      redirect_to user_path(@mydog.user_id)
    else
      flash[:notice] = "愛犬の登録に失敗しました"
      @user = User.find(@mydog.user_id)
      @mydogs = @user.mydogs
      render template: 'users/show' #, :collection => User.find(params[:user_id])
    end
  end
  
  def edit
  end
  
  def update
    if @mydog.update(mydog_params)
      redirect_to mydog_path(@mydog), notice: '愛犬を編集しました！' 
    else
      render :edit 
    end
  end
  
  def destroy
    @mydog.destroy
    redirect_to user_path(@current_user),notice: 'Mydog was successfully destroyed.'
  end
  
  private
  
  def set_mydog
    @mydog = Mydog.find(params[:id])
  end
  
  def mydog_params
    params.require(:mydog).permit(:name, :breed, :age, :gender, :image, :image_cache, :user_id)
  end
  
end
