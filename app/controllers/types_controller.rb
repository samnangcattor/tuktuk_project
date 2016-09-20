class TypesController < ApplicationController
  def index
    @types = Type.all
    respond_to :html, :json
  end

  def show
    @type = Type.find params[:id]
  end
end
