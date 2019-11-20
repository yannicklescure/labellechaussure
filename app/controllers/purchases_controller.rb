class PurchasesController < ApplicationController

  def index
    # @purchases = Purchase.all
    @purchases = policy_scope(Purchase)
  end

  def show
    @purchase = Purchase.find(params[:id])
    authorize @purchase
  end

  def create
    @purchase = Purchase.new(purchase_params)
    # @product = Product.find(params[:product_id])
    # @purchase.product = @product
    @purchase.user = current_user
    @purchase.done = true
    authorize @purchase
    if @purchase.save
      # raise
      redirect_to purchases_path
    else
      # raise
      render :new
    end
  end

  def new
    @purchase = Purchase.new
    @product = Product.find(params[:product_id])
    authorize @purchase
  end

  def destroy
    @purchase = Purchase.find(params[:id])
    @purchase.destroy
    authorize @purchase
    redirect_to purchases_path
  end

  private

  def purchase_params
    params.require(:purchase).permit(
      :done, :rating, :first_name, :last_name, :address_1, :address_2,
      :country, :state, :zip, :product_id
    )
  end
end
