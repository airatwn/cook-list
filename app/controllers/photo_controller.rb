class PhotoController < ApplicationController
  def index
  end

  def new
    @photo = Photo.new
  end

  def create
    Photo.create(photo_params) #createメソッドの引数に使用して、tweetsテーブルへ保存できるよう
    @photo = Photo.find(params[:photo_id])

    @photo = Photo.new(photo_params)
      if @photo.save
        redirect_to root_path
      else
        render :new
      end
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :text, :date, :image).merge(user_id, :current.id)
  end
end
