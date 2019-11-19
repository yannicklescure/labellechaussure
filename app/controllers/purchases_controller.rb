class PurchasesController < ApplicationController

  def index
    @purchases = Purchase.all
  end

  def show
    @purchase = Purchase.find(params[:id])
  end

  def create
    @purchase = Purchase.new(purchase_params)
    @purchase.product = Product.find(params[:product_id])
  end

  def new
  end

  def destroy
  end
end
