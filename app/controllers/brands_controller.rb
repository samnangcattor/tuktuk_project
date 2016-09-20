class BrandsController < ApplicationController
  def index
    @brands = Brand.all
    respond_to :html, :json
  end

  def show
    @brand = Brand.find params[:id]
  end
end
