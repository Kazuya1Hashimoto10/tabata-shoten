class BlogsController < ApplicationController
  def index
    @blogs = Blog.all.order("created_at DESC")
  end

  def show
    @blog = Blog.find(params[:id])
  end
end
