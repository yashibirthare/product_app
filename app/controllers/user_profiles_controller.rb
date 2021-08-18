class UserProfilesController < ApplicationController

  before_action :authenticate_user!, except: [:updated_wishlist_quantity]
  skip_before_action :verify_authenticity_token, only: [:updated_wishlist_quantity]

  def show
    @user = User.find_by_id(params[:id])
  end

  def updated_wishlist_quantity
    if params[:product_id].present?
      @wishlists = Wishlist.where(product_id: params[:product_id])
      @wishlists.each do |wishlist|
        UserMailer.with(user: wishlist.user).wishlist_email.deliver_later
      end
      render text: "ok"
    end
  end

  
  
    
end
