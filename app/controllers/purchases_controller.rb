class PurchasesController < ApplicationController

  def index
    # @purchases = Purchase.all
    @purchases = policy_scope(Purchase)
  end

  def show
    @purchase = Purchase.find(params[:id])
    @similarproduct = policy_scope(Product).where(brand: @purchase.product.brand)
    authorize @purchase
  end

  def new
    @purchase = Purchase.new
    @product = Product.find(params[:product_id])
    authorize @purchase
  end

  def create
    @user = current_user
    @purchase = Purchase.new(purchase_params)
    @purchase.user = @user
    @purchase.done = true
    authorize @purchase
    if @purchase.save
      @user.update(
        first_name: @purchase.first_name,
        last_name: @purchase.last_name,
        address_1: @purchase.address_1,
        address_2: @purchase.address_2,
        country: @purchase.country,
        state: @purchase.state,
        zip: @purchase.zip
      )
      redirect_to purchases_path
    else
      render :new
    end
  end

  def edit
    @purchase = Purchase.find(params[:id])
    @purchase.update(purchase_params)
    authorize @purchase
  end

  def update
    @purchase = Product.find(params[:id])
    authorize @purchase
    if @purchase.update(purchase_params)
      redirect_to purchase_path(@purchase)
    else
      render :edit
    end
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
