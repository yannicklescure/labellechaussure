class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    # @products = Product.all
    if params[:query]
      @search_product = policy_scope(Product).search_product(params[:query])
      @search_product = policy_scope(Product) if params[:query] == ""
      respond_to do |format|
        format.html
        format.js { render partial: 'search-results' }
      end
    else
      @products = policy_scope(Product)
    end
  end

  def show
    @product = Product.find(params[:id])
    @similarproduct = policy_scope(Product).where(brand: @product.brand)
    authorize @product
  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @colors = Color.all
    @product = Product.new(product_params)
    # @product.color = Color.find(params[:color_id])
    @product.user = current_user
    authorize @product
    if @product.save
      redirect_to sales_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    # raise
    # @product.update(product_params)
    authorize @product
  end

  def update
    @product = Product.find(params[:id])
    authorize @product
    if @product.update(product_params)
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def destroy
    @product = Purchase.find(params[:id])
    @product.destroy
    authorize @product
    redirect_to user_products_path
  end

  def confirm
    @product = Product.find(params[:id])
    @purchase = Purchase.find(params[:purchase])
    @purchase.confirm = true
    authorize @purchase
    @purchase.save
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :price, :model, :size, :brand, :year, :photo, :photo_cache, :color_id)
  end
end
