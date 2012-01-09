class ApplicationController < ActionController::Base
  protect_from_forgery
	private
  def validate_user_logged_in
    if current_user.nil?
      redirect_to login_url
    end
  end
  def current_cart
	  Cart.find(session[:cart_id])
		rescue_action ActiveRecord::RecordNotFound
		cart = Cart.create
		session[:cart_id] = cart.id
		cart
  end
  def current_user_session
    logger.debug "ApplicationController::current_user_session"
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end
  def current_user
    logger.debug "ApplicationController::current_user"
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.user
  end

end
