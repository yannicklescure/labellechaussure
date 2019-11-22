class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    # @products = Product.all
    @products = policy_scope(Product)
  end

  def show
    @product = Product.find(params[:id])
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
    @product.update(product_params)
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

  private

  def product_params
    params.require(:product).permit(:title, :description, :price, :model, :size, :brand, :year, :photo, :photo_cache, :color_id)
  end
end
