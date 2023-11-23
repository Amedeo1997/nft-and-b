class ProductsController < ApplicationController
  before_action :set_product, only: [:show]
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @products = Product.all
  end

  def show
    @products = Product.find(params[:id])
    @suggestion = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user_id = current_user.id
    if @product.save
      current_user.update(host: true)
      redirect_to products_path(@product)
    else
      render :new
    end
  end

private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :image, :category, :price, :description)
  end
end
