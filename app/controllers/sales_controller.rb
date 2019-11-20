class SalesController < ApplicationController

  def index
    # @sales = Product.where(user: current_user)
    @sales = policy_scope(Product)
  end
end
