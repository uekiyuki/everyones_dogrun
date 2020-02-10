class MydogsController < ApplicationController
  before_action :set_mydog,only: [:show, :edit, :update, :destroy] 
    
  def index
    @mudogs = Mydog.all
  end
  
  def show
  end

  def new
    @Mydog = Mydog.new
  end
  
  def create
    # binding.pry
    # @post = current_dogrun.posts.build(post_params)
    @mydog = Mydog.new(mydog_params)
    if @mydog.save
      flash[:notice] = "愛犬を登録しました."
      redirect_to user_path(@mydog.user_id)
    else
      flash[:notice] = "愛犬の登録に失敗しました"
      redirect_to user_path(@mydog.user_id)
    end
  end
  
  def edit
  end
  
  def update
    if @mydog.update(mydog_params)
      redirect_to mydog_path(@mydog.id), notice: '愛犬を編集しました！' 
    else
      render :edit 
    end
  end
  
  def destroy
    @mydog.destroy
    redirect_to user_path,notice: 'Mydog was successfully destroyed.'
  end
  
  private
  
  def set_mydog
    @mydog = Mydog.find(params[:id])
  end
  
  def mydog_params
    params.require(:mydog).permit(:name, :breed, :age, :gender, :image, :image_cache, :user_id)
  end

    
  
end
