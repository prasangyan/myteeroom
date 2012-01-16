class ProductsController < ApplicationController
  # GET /products
  # GET /products.json
  def index
    @products = Product.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
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
  end
  # POST /products
  # POST /products.json
  def create
	 	@product = Product.new(params[:product])
    respond_to do |format|
		 	if @product.save
				format.html {redirect_to @product, notice: 'Product successfully created'}
				format.json {render json: @product, status: :created, location: @product}
			 else
				format.html { render action: "new"}
				format.json { render json: @product.errors, status: :unprocessable_entity}
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
        format.html { render action: "edit" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end
  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :ok }
    end
  end
  def get_image
    unless params[:id].nil?
      product = Product.find_by_id(params[:id])
      unless product.nil?
        send_data product.image, :filename => product.file_name, :type => product.content_type
      else
        render :text => nil
      end
    else
      render :text => nil
    end
  end
  def list
    @products = Product.all
    render :layout => false
  end
end
