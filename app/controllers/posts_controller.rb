class PostsController < ApplicationController
  before_action :find_post, only: [:edit, :show]

  def edit
  end

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  private
    def find_post
      @post = Post.find_by_id(params[:id])
    end
end
