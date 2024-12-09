class WishlistController < ApplicationController
  def show
    @wishlist = Wishlist.find(params[:id])
  end

  def new
    @wishlist = Wishlist.new
  end

  def create
    @wishlist = Wishlist.new
    @wishlist.user = current_user
    @wishlist.save
  end

  def destroy
    @wishlist = Wishlist.find(params[:id])
    @wishlist.destroy
  end
end
