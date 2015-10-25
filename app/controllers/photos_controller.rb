class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def new
  end

  def create_row
    p = Photo.new
    p.caption = params[:photo_caption]
    p.source = params[:photo_source]
    p.save
    redirect_to("/")
  end

  def show
    # params =  {"id"=>"2"}
    # Practice
    # @photo_id = params[:id]
    # @photo_source = @p.source
    # @photo_caption = @p.caption
    @photo=Photo.find_by({:id => params[:id] })
  end

  def edit
    @photo = Photo.find_by({:id=>params[:id]})
  end

  def update_photo
    p = Photo.find_by({:id=>params[:id]})
    p.caption = params[:photo_caption]
    p.source = params[:photo_source]
    p.save
    redirect_to("/photos/#{p.id}")
  end

  def delete
    p=Photo.find_by({:id => params[:id]})
    p.delete
    redirect_to("/")
  end

end
