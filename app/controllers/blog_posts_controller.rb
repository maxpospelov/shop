class BlogPostsController < ApplicationController
  def show
    @post = BlogPost.find(params[:id])
  end
end
