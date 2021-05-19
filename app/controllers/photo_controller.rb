class PhotoController < ApplicationController
  def index
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :text, :date, :image).merge(user_id, :currebt.id)
  end
end
