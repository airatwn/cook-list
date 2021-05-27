class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @photos = Photo.all.order('created_at DESC')
  end
  
  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    photo = Photo.find(params[:id])
    photo.update(photo_params)
    if photo.update(photo_params)
      redirect_to photo_path(photo.id), method: :get
    end
  end

  def destroy
    photo = Photo.find(params[:id])
    photo.destroy
    if photo.destroy
      redirect_to root_path
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :date, :image, :text).merge(user_id: current_user.id)
  end
end
