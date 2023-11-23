class ProductsController < ApplicationController
  before_action :set_product, only: [:show]
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @categories = Product.pluck(:category).uniq
    @selected_category = params[:category]
    @products = filtered_products.paginate(page: params[:page], per_page: 8)
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

def filtered_products
  if @selected_category.present? && @selected_category != 'all'
    Product.where(category: @selected_category)
  else
    Product.all
  end
end
