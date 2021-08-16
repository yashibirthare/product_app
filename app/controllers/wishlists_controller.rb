class WishlistsController < ApplicationController
	def index
		@products = FetchDataService.new.get_products(params[:category_id])
		@wishlists = current_user.wishlists.all
	end

	def new
		@wishlist = Wishlist.new
	end


	def create
		 # byebug

		@wishlist = current_user.wishlists.new(product_id: params[:product_id])
	    @wishlist.save
        redirect_to homes_path
    
	end

	def destroy
		@wishlist = current_user.wishlists.find(params[:id])
		@wishlist.destroy
		redirect_to homes_path
	end

	

end
