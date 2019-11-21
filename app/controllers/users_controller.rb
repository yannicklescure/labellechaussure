class UsersController < ApplicationController

  def show
    @products = Product.where(user: current_user)
    # @user = current_user
    authorize @products
  end

  def information
    @user = current_user
    authorize @user
  end

  def edit
    @user = current_user
    authorize @user
    # @user.update(user_params)
    # raise
  end

  def update
    @user = current_user
    authorize @user
    if @user.update(user_params)
      #raise
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :address_1, :address_2, :country, :state, :zip)
  end
end
