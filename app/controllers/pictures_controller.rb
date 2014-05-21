class PicturesController < ApplicationController
  before_action :set_item, only: [:edit, :create]
   respond_to :js, :html

  def destroy
    Picture.find(params[:id]).destroy!
    render json: { status: 'OK' }
  end

  def edit
    @picture = Picture.new
  end

  def create
    @item.pictures.create(picture_params)

    respond_with do |format|
      format.js
      format.html { redirect_to item_path(item)}
    end
  end

  private

  def picture_params
    params.require(:item).permit(:file)
  end

  def set_item
    @item = Item.find(params[:item_id])
  end

end
