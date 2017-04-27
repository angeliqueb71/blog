class PostsController < ApplicationController
  def index
    # this will reverse the order of the post: most recent on top
    @posts = Post.all.order('created_at DESC')
  end
  # create a new action
  def new
  end

  # to save the post; define & create a method
  def create
    # create a new post & save
    @post = Post.new(post_params)
    @post.save

    redirect_to @post
  end

  def show
    # going to find the post by id ex post 1
    @post = Post.find(params[:id])
  end

  # rails security feature- must define what params you want to allow
  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
