class PostsController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "pass", except: [:create, :new, :user_posts]
  before_filter :authenticate_user, :only => [:new, :create,:user_posts ]

  def new
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(params[:post].permit(:name, :brand, :model, :problem, :result))
      redirect_to @post
    else
      render 'edit'
    end

  end
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def create

    @user = @current_user
    #@post = Post.new(post_params)
    @post = @user.posts.create(params[:post].permit(:name, :brand, :phone, :model, :problem, :user_id))
    #@post.save
    redirect_to static_pages_sent_path
  end

  def user_posts
    @posts = Post.where("user_id = ?", current_user.id)
  end

  private
  def post_params
    params.require(:post).permit(:name, :brand, :phone, :model, :problem, :result, :user_id, :username)
  end
end
