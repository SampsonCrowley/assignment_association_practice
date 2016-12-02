class PostsController < ApplicationController
  before_action :find_post, only: [:edit, :show, :update]

  def edit
  end

  def index
    @posts = Post.all.order("created_at DESC")
  end

  def show
  end

  def new
    @post = Post.new
  end

  def update
    if @post.update(whitelist)
      redirect_to @post
    else
      render :edit
    end
  end

  private
    def find_post
      @post = Post.find_by_id(params[:id])
    end

    def whitelist
      params.require(:post).permit(:title, :body, :category_id, tag_ids: [])
    end
end
