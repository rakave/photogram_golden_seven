class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    # params =  {"id"=>"2"}
    @photo=Photo.find_by({:id => params[:id] })
    # Practice
    # @photo_id = params[:id]
    # @photo_source = @p.source
    # @photo_caption = @p.caption
  end

  def edit

  end

  def delete

  end

end
