class PhotosController < ApplicationController
  before_action :current_user_must_be_photo_user, :only => [:edit, :update, :destroy]

  def current_user_must_be_photo_photographer
    photo = Photo.find(params[:id])

    unless current_user == photo.photographer
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new
    @photo.owner_id = params[:owner_id]

    if @photo.save
      redirect_to "/photos", :notice => "Photo created successfully."
    else
      render 'new'
    end
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])

    @photo.owner_id = params[:owner_id]

    if @photo.save
      redirect_to "/photos", :notice => "Photo updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @photo = Photo.find(params[:id])

    @photo.destroy

    redirect_to "/photos", :notice => "Photo deleted."
  end
end
