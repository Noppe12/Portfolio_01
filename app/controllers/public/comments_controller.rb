class Public::CommentsController < ApplicationController

  def create
    @item = Item.find(params[:item_id])
    @comment = @item.comments.new(comment_params)
    @comment.member_id = current_member.id
    if @comment.save
      redirect_to request.referer
    else
      @item = Item.find(params[:id])
      @comments = @item.comments
      redirect_to item_path(@item.id)
    end
  end

  def destroy
    @item = Item.find(params[:item_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to request.referer
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
