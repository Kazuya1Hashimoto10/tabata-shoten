class BlogsController < ApplicationController
  def index
    @blogs = Blog.all.order("created_at DESC").page(params[:page]).per(5)
  end
end
