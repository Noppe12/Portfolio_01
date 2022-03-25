class Private::ItemsController < ApplicationController
  def index
    @items = Item.page(params[:page]).order(:id)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.creator_id = current_creator.id
    if @item.save
       flash[:success] = "You have created Item successfully."
      redirect_to private_item_path(@item.id)
    else
      render :index
    end
  end

  def show
    @item = Item.find(params[:id])
    @comments = @item.comments
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.creator_id = current_creator.id
    if @item.update(item_params)
       flash[:success] = "You have updated Item successfully."
       redirect_to private_item_path(@item.id)
    else
      render :show
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    flash[:success] = "Item was successfully deleted."
    redirect_to items_path
  end

  private
  def item_params
    params.require(:item).permit(:image_name, :image, :introduction, :creator_id)
  end

end
