class SalesController < ApplicationController

  def index
    @sales = Purchase.where(user: current_user)
  end
end
