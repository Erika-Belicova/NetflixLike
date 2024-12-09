class LikeController < ApplicationController
  before_action :set_wishlist, only: [:index, :new, :create, :destroy]
  before_action :set_movie, only: [:new, :create]

  def index
    @likes = like.all
  end

  def new
    @like = Like.new
  end

  def create
    @like = Like.new
    @like.wishlist = @wishlist
    @like.movie = @movie
    @like.save
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    redirect_to wishlist_path, status: :see_other
  end

  private

  def set_wishlist
    @wishlist = Wishlist.find(params[:id])
  end

  def set_movie
    @movie = Movie.find(params[:id])
  end
end
