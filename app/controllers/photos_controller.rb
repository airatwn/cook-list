class PhotosController < ApplicationController
  def index
  end

  def new
    @photo = Photo.new
  end

  def create
    # binding.pry
    Photo.create(photo_params) #createメソッドの引数に使用して、photosテーブルへ保存できるよう
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :date, :image, :text).merge(user_id: current_user.id)
  end
end
