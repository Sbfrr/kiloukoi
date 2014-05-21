class PicturesController < ApplicationController
  def destroy
    Picture.find(params[:id]).destroy!
  end

  def edit
  end

  def update
  end

end
