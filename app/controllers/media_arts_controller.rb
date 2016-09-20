class MediaArtsController < ApplicationController
  def index
    @media_arts = MediaArt.all
    respond_to :html, :json
  end

  def show
    @media_art = MediaArt.find params[:id]
    respond_to :html, :json
  end
end
