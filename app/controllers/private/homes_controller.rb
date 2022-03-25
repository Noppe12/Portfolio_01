class Private::HomesController < ApplicationController
  before_action :authenticate_creator!

  def top
    @items = Item.find(Favorite.group(:item_id).order('count(item_id) desc').pluck(:item_id))
    @creators = Creator.order('id DESC').limit(10)
    @creator = current_creator
  end
end
