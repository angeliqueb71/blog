class PostsController < ApplicationController

  # use the authentication system

    # http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

  def index
    # this will reverse the order of the post: most recent on top
    @posts = Post.all.order('created_at DESC')
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)

    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    Post.find(params[:id]).destroy

    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :user_id)
  end
end
