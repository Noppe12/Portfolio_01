class Admin::HomesController < ApplicationController
  before_action :authenticate_admin!

  def top
    @items = Item.find(Favorite.group(:item_id).order('count(item_id) desc').pluck(:item_id))
    @creators = Creator.order('id DESC').limit(10)
  end
end
