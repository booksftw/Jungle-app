class ProductsController < ApplicationController
  # has_many :reviews

  def index
    @products = Product.all.order(created_at: :desc)
    @user = "INDEX TEST USER"
  end

  def show
    @product = Product.find params[:id]
    # @user = "SHOW Test User"
    @user = current_user# Get logged in user
  end

end
