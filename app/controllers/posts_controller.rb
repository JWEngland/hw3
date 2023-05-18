class PostsController < ApplicationController
  def new
    @place = Place.find(params[:place_id])
    @post = Post.new
  end

  def create
    @place = Place.find(params[:place_id])
    @post = @place.posts.new(post_params)
    
    if @post.save
      redirect_to @place
    else
      render :new
    end
  end
  private

  def post_params
    params.require(:post).permit(:title, :description, :created_at)
  end
end
