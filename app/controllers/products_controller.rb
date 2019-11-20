class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @colors = Color.all
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to user_products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    @product.update(product_params)
  end

  def update
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Purchase.find(params[:id])
    @product.destroy
    redirect_to user_products_path
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :price, :model, :size, :brand, :year)
  end
end
