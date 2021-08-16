class HomesController < ApplicationController

  def index
    
    @categories = FetchDataService.new.get_categories
    # byebug
    @products = FetchDataService.new.get_products(params[:category_id])
    
  end


end

