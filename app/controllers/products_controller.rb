class ProductsController < ApplicationController
  include ApplicationHelper

  def index
    @cart = current_cart
  end

  def add
    current_cart << params[:product]
    redirect_to "/"
  end
end
