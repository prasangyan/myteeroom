class StoreController < ApplicationController
  def index
	 @product_header_previews = Product.find(1,2)
	 @products = Product.all
  end
  def show
    @product = Product.find(params[:id])
		@tinies = Tiny.find_all_by_product_id(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
	end
	def list
		@products = Product.all
	end


end
