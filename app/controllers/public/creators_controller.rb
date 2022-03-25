class Public::CreatorsController < ApplicationController
  def show
    @creator = Creator.find(params[:id])
    @items = @creator.items.all
  end

  def index
    @creators = Creator.page(params[:page]).per(8)
    @count = Creator.count
  end
end
