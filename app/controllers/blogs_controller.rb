class BlogsController < ApplicationController
  def index
    # binding.pry
    @blogs = Blog.all.order('created_at DESC')
  end

  def new
    @blog = Blog.new
  end

  def create
    Blog.create(blog_params)
    redirect_to action: :index
  end

  def edit
    @blog = Blog.find(params[:id])
    authorize!(@blog)
  end

  def update
    blog = Blog.find(params[:id])
    blog.update(blog_params)
    redirect_to action: :index
  end

  def destroy
    blog = Blog.find(params[:id])
    blog.destroy
    redirect_to action: :index
  end

  def show
    @blog = Blog.find(params[:id])
  end

private

  def blog_params
    params.require(:blog).permit(:title, :text).merge(user_id: current_user.id)
  end

end
