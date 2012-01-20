class TiniesController < ApplicationController

  # GET /tinies
  # GET /tinies.json
  def index
    unless params[:id].nil?
      @tinies = Tiny.find_all_by_product_id(params[:id])
      render :layout =>  false
    else
      redirect_to :controller => "products", :action =>  "index"
    end
  end

   # GET /tinies/new
  # GET /tinies/new.json
  def new
    unless params[:id].nil?
      @tiny = Tiny.new
      @tiny.product_id = params[:id]
      render :layout => false
    else
      redirect_to :controller => "products", :action =>  "index"
    end
  end

  # GET /tinies/1/edit
  def edit
    @tiny = Tiny.find(params[:id])
    render :layout => false
  end

  # POST /tinies
  # POST /tinies.json
  def create
    @tiny = Tiny.new(:small_image_url => params[:small_image_url],:large_image_url => params[:large_image_url],
										 :tinyPreview => params[:tinyPreview],
										 :product_id => params[:id])
    respond_to do |format|
      if @tiny.save
        redirect_to :controller => "products" , :action => "index"
      else
        format.html { render action: "new" }
        format.json { render json: @tiny.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tinies/1
  # PUT /tinies/1.json
  def update
    @tiny = Tiny.find(params[:id])
    if @tiny.update_attributes(:small_image_url => params[:small_image_url],
															 :large_image_url => params[:large_image_url], :tinyPreview => params[:tinyPreview])
      redirect_to :controller => "products", :layout => false, notice: 'Tiny was successfully updated.'
    else
      render action: "edit"
      render json: @tiny.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tinies/1
  # DELETE /tinies/1.json
  def destroy
    @tiny = Tiny.find(params[:id])
    @tiny.destroy
    respond_to do |format|
      format.html { redirect_to tinies_url }
      format.json { head :ok }
    end
  end

  def show

  end
end
