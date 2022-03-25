class Public::ItemsController < ApplicationController
  
  def show
    @item = Item.find(params[:id])
    @comment = Comment.new
    @comments = @item.comments
    @member = current_member
  end

  def index
    @items = Item.page(params[:page]).per(8)
    @member = current_member
    @count = Item.count
  end

end
