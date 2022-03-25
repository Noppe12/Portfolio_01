class Admin::CreatorsController < ApplicationController
  def index
    @creators = Creator.page(params[:page])
  end

  def show
    @creator = Creator.find(params[:id])
  end

  def edit
    @creator = Creator.find(params[:id])
  end

  def update
    @creator = Creator.find(params[:id])
    if @creator.update(creator_params)
       flash[:success] = "You have updated creator successfully."
       redirect_to admin_creator_path(@creator.id)
    else
      render :edit
    end
  end

  private
  #def if_not_admin
   # redirect_to root_path unless current_user.admin?
  #end
  def creator_params
    params.require(:creator).permit(:penname, :email, :is_active)
  end
end
