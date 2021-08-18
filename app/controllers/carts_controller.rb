class CartsController < ApplicationController
	def index
		@products = FetchDataService.new.get_product_ids(params[:id])
		@carts = current_user.carts.all
	end

	def new
		@carts = Cart.new
	end


	def create

		# byebug
		
		@carts = current_user.carts.new(product_id: params[:product_id])
	    @carts.save
        redirect_to homes_path
    
	end

	def destroy
		@cart = current_user.carts.find(params[:id])
		@cart.destroy
		redirect_to homes_path
	end
end
