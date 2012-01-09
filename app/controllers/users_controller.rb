class UsersController < ApplicationController
  def new
    @user = User.new
    render :layout => false
  end
def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Registered successfully"
      redirect_to store_url
    else
      render :action => "new", :layout => false
    end
  end
end
