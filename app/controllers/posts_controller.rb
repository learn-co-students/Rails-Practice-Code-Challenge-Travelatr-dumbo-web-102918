class PostsController < ApplicationController
  before_action :get_post, only: [:edit, :show, :update, :destroy]

  def index
   @posts = Post.all
  end

  def show

  end

  def edit

  end

  def update
  end

  def new
    @post = Post.new
    @bloggers = Blogger.all
  end

  def create
    @post = Post.create(post_params)
    redirect_to posts_path
  end

  def delete
  end

 private

 def get_post
   @post = Post.find(params[:id])
 end

 def post_params
   params.permit(:id, :name, :bio, :age)
 end


 end
