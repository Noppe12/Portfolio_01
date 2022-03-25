class Private::CreatorsController < ApplicationController

  def show
    @creator = current_creator
    @items = current_creator.items.all
  end

  def edit
    @creator = current_creator
  end

  def update
    @creator = current_creator
    if @creator.update(creator_params)
       flash[:success] = "You have updated successfully."
       redirect_to creators_mypage_path
    else
      render :show
    end
  end

  def check
    @creator = current_creator
  end

  def withdraw
    @creator = current_creator
    @creator.update(is_active: false)
    reset_session
    flash[:notice] = "退会処理を実行いたしました"
    redirect_to root_path
  end

  private
  def creator_params
    params.require(:creator).permit(:penname, :email, :is_active)
  end

end
