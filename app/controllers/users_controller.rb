class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]
  after_create :add_wishlist

  def show
    @user = current_user
    @wishlist = current_user.wishlist
    add_wishlist if @user.wishlist.nil?
    @likes = Like.where(user: current_user)
  end

  def add_wishlist
    Wishlist.create(user: @user)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
