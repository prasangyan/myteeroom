class StoreController < ApplicationController
  before_filter :validate_user_logged_in

  def index
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

end
