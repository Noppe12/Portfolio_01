class Admin::ItemsController < ApplicationController

  def show
    @item = Item.find(params[:id])
    @comments = @item.comments
  end

  def index
    @items = Item.page(params[:page]).per(8)
    @count = Item.count
  end
end
