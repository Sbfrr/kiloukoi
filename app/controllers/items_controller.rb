class ItemsController < ApplicationController
 before_action :set_item, only: [:show, :edit, :update, :destroy]
 before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
 respond_to :js, :html

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

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item.update(item_params)

  end

  def destroy
    @item.destroy
    redirect_to items_path
  end

private

  def item_params
    @item_params = params.require(:item).permit(:price, :description, :title, :location)
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
