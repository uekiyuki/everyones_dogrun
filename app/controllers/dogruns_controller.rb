class DogrunsController < ApplicationController
  before_action :set_dogrun,only: [:show, :edit, :update, :destroy] 
  
  def index
    @dogruns = Dogrun.all
  end

  def show
    # binding.pry
    @post = Post.new 
    @posts = @dogrun.posts
  end

  def new
    @dogrun = Dogrun.new
  end

  def create
    @dogrun = current_user.dogruns.build(dogrun_params)
    if @dogrun.save
      flash[:notice] = "ドッグランを登録しました."
      redirect_to dogrun_path(@dogrun.id)
    else
      flash.now[:notice] = "ドッグランに登録に失敗しました"
      render :new
    end
  end


  def edit
  end

  def update
    if @dogrun.update(dogrun_params)
      redirect_to dogrun_path(@dogrun.id), notice: 'Dogrunを編集しました！' 
    else
      render :edit 
    end
  end

  end

  def destroy
    @dogrun.destroy
    redirect_to dogruns_path,notice: 'Dogrun was successfully destroyed.'
  end

  private

  def set_dogrun
    @dogrun = Dogrun.find(params[:id])
  end

  def dogrun_params
    params.require(:dogrun).permit(:name, :address, :opening_at, :closing_at, :price, :breadth, :other, :image, :image_cache)
  end

  
