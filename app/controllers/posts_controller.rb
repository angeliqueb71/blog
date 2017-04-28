class PostsController < ApplicationController
  def index
    # this will reverse the order of the post: most recent on top
    @posts = Post.all.order('created_at DESC')
  end
  # create a new action
  def new
    # @post = Post.new
  end

  # to save the post; define & create a method
  def create
    # create a new post & save
    @post = Post.new(post_params)
    @post.save

    # if @post.save
    #  redirect_to @post
    # else
    #   # render post/new will keep the message from losing if wasnt saved correctly
    #   redirect_to @post
    # end
   end

  def show
    # going to find the post by id ex post 1
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(params[:post].permit(:title, :body))
      redirect_to @post
    else
      redirect_to root_path
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to root_path
  end

  # rails security feature- must define what params you want to allow
  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
