class TypesController < ApplicationController
  def index
    @types = Type.all
    respond_to :html, :json
  end
end
