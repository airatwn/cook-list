class PhotosController < ApplicationController
  def index
  end

  def new
    @photo = Photo.new
  end

  def create
    # Photo.create(photo_params) #createメソッドの引数に使用して、photosテーブルへ保存できるよう
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @photos = Photo.all
  end
  
  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    photo = Photo.find(params[:id])
    photo.update(photo_params)
    if photo.update
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
