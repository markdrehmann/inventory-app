class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create

  end

  def Edit
    @product = Product.find(params[:id])
  end

  def destroy

  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :quantity)
  end
end
