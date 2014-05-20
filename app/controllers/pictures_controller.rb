class PicturesController < ApplicationController
  def destroy
    Picture.find(params[:id]).destroy!
  end
end