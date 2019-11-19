class UsersController < ApplicationController

  def index
    @products = Product.where(user: current_user)
  end
end
