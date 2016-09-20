class MediaArtsController < ApplicationController
  def index
    @media_arts = MediaArt.all
    respond_to :html, :json
  end
end
