class ImagesController < ApplicationController
  def index
    @images = Image.activate
    respond_to :html, :json
  end
end
