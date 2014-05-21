class PicturesController < ApplicationController
  before_action :set_item, only: [:edit, :update]

  def destroy
    Picture.find(params[:id]).destroy!
  end

  def edit
    @item.pictures.create(picture_params)
  end

  def update
    @item.pictures.create(picture_params)

    respond_with do |format|
      format.js
      format.html { redirect_to flat_path(flat)}
    end
  end

  private

  def picture_params
    params.require(:item).permit(:file)
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
