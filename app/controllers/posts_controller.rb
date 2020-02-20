class PostsController < ApplicationController
  before_action :set_post,only: [:show, :edit, :update, :destroy] 
    
  def index
    @posts = Post.all
  end
  
  def show
    # binding.pry
  end
  
  def create
    # binding.pry
    # @post = current_dogrun.posts.build(post_params)
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "口コミを登録しました!"
      redirect_to dogrun_path(@post.dogrun_id)
    else
      flash[:notice] = "口コミ登録に失敗しました!"
      @dogrun =  Dogrun.find(@post.dogrun_id)
      @posts = @dogrun.posts
      render template: 'dogruns/show'
    end
  end
  
  def edit
  end
  
  def update
    if @post.update(post_params)
      redirect_to post_path(@post.id), notice: '口コミを編集しました！' 
    else
      render :edit 
    end
  end
  
  def destroy
    @post.destroy
    redirect_to dogrun_path(@post.dogrun_id),notice: 'Post was successfully destroyed.'
  end
  
  private
  
  def set_post
    @post = Post.find(params[:id])
  end
  
  def post_params
    params.require(:post).permit(:title, :content,:image, :image_cache, :dogrun_id, :user_id)
  end

end
