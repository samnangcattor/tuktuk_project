class ProductsController < ApplicationController
  def index
    @products = Product.all
    respond_to :html, :json
  end
end
