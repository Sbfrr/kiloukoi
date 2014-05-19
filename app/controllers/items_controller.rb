class ItemsController < ApplicationController
 before_action :find_all_items

 before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
    item = Item.create(item_params)
    redirect_to item_path(item)
  end

  def find_all_items
    @items_list = Item.all
  end

  def edit
  end

  def update
    @item.update!(item_params)

    #flash [:info] = "Tu viens de mettre à jour ton annonce #{@item.title}"

    redirect_to item_path(@item)
  end

  def destroy
    @item.destroy
    redirect_to items_path
  end

private

  def item_params
    @item_params = params.require(:item).permit(:price, :pictures_url, :description, :title, :location)
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
