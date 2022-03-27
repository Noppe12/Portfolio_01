class Public::HomesController < ApplicationController
  before_action :authenticate_member!,except: [:top]

  def top
    @items = Item.find(Item.pluck(:id).shuffle[0..5])
    @creators = Creator.order('id DESC').limit(10)
    @creator = current_creator
    @member = current_member
  end
  def topafter
    @items = Item.find(Favorite.group(:item_id).order('count(item_id) desc').pluck(:item_id))
    @creators = Creator.order('id DESC').limit(10)
  end
end
