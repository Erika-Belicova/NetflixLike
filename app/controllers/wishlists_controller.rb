class WishlistsController < ApplicationController
  def show
    @wishlist = current_user.wishlist
  end

  def new
    @wishlist = Wishlist.new
  end

  def create
    @wishlist = Wishlist.new
    @wishlist.user = current_user
    @wishlist.save
  end
end
