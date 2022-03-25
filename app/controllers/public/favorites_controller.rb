class Public::FavoritesController < ApplicationController
  before_action :set_item

  def create
    @favorite = Favorite.create(member_id: current_member.id, item_id: @item.id)
    @favorite.save
  end

  def destroy
    @favorite = Favorite.find_by(member_id: current_member.id, item_id: @item.id)
    @favorite.destroy
  end

  private
  def set_item
    @item = Item.find(params[:item_id])
  end
end
