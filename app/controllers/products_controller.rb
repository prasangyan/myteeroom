class ProductsController < ApplicationController
  before_filter :validate_user_logged_in
  # GET /products
  # GET /products.json
  def index
    @products = Product.all
    render :layout => false
  end
  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end
  # GET /products/new
  # GET /products/new.json
  def new
    @product = Product.new
    render :layout => false
  end
  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
    render :layout => false
  end
  # POST /products
  # POST /products.json
  def create
    @product = Product.new(:title => params[:product][:title], :description => params[:product][:description], :price => params[:product][:price], :image_url => params[:product][:image_url] )
    respond_to do |format|
      if @product.save
        flash[:notice] = "Product was successfully created."
        redirect_to products_url
      else
        puts @product.errors
        render :action => "new",  :layout => false
      end
    end
  end
  # PUT /products/1
  # PUT /products/1.json
  def update
    @product = Product.find(params[:id])
    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit", :layout => false }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end
  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_url
  end
end
