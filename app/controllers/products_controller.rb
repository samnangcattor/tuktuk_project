class ProductsController < ApplicationController
  def index
    @products = Product.all
    respond_to :html, :json
  end

  def show
    @product = Product.find params[:id]
    @images = @product.images.deactivate
    respond_to :html, :json
  end
end
