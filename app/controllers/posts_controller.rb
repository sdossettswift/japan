class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post=Post.create(post_params)
    if @post.save
      redirect_to root_path, notice: "Post Successfully Added"
    else
      render :new
    end
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by id: params[:id]
  end

  def edit
    @post = Post.find_by id: params[:id]
  end

  def update
    @post = Post.find_by id: params[:id]
    if @post.update(post_params)
      redirect_to root_path, notice: "Post Details Successfully Updated"
    else
      render :edit
    end
  end

  def delete
      @post = Post.find_by id: params[:id]
      @post.destroy
      redirect_to root_path, notice: 'Post Details Removed'
  end

  def post_params
    params.require(:post).permit(:content, :date, :category, :book_author, :title)
  end
end
