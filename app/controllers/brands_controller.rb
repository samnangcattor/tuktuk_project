class BrandsController < ApplicationController
  def index
    @brands = Brand.all
    respond_to :html, :json
  end
end
