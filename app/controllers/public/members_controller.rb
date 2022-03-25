class Public::MembersController < ApplicationController
  def show
    @member = current_member
    @items = current_member.items.all
  end

  def edit
    @member = current_member
  end

  def update
    @member = current_member
    if @member.update(member_params)
       flash[:success] = "You have updated successfully."
       redirect_to members_mypage_path
    else
      render :show
    end
  end

  def check
    @member = current_member
  end

  def withdraw
    @member = current_member
    @member.update(is_active: false)
    reset_session
    flash[:notice] = "退会処理を実行いたしました"
    redirect_to root_path
  end

  private
  def member_params
    params.require(:member).permit(:nickname, :email, :is_active)
  end
end
