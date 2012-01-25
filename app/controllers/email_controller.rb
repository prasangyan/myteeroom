class EmailController < ApplicationController
  def new
    @email = Email.new
    render :layout => false
  end
  def add
    unless params[:email].nil?
      @email = Email.new
      @email.email = params[:email].to_s
      unless @email.save
        render :action => "new", :layout => false
        return
      end
      redirect_to :action => "references" , :id => @email.id
    end
  end
  def references
    @error = ""
    render :layout => false
  end
  def addreferences
    @error = ""
    unless params[:email].nil? and params[:id].nil?
      email = Email.find_by_id(params[:id])
      unless email.nil?
        is_inputs_are_valid = false
        params[:email].to_a.each do |email_add|
          # need to do some validation on email address
          reference = EmailReference.new
          reference.email_address = email_add
          reference.email_id = email.id
          reference.save
        end
        render :text => "successfully added references, now you can continue your shopping."
        return
      else
        @error = "An error occurred, please retry the page and continue. "
      end
    end
    render :action => "references" , :layout => false
  end
end
