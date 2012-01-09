class StoreController < ApplicationController
  before_filter :validate_user_logged_in

  def index
	 @products = Product.all
  end

end
