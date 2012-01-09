class UserSessionsController < ApplicationController

  def new
    @user_session = UserSession.new
    render :layout => false
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      puts "user session saved"
      redirect_to store_url
    else
      render :action => "new" , :layout => false
    end
  end

  def destroy
    @user_session = UserSession.find
    unless @user_session.nil?
      @user_session.destroy
    end
    flash[:notice] = "Successfully logged out"
    redirect_to store_url
  end

end
