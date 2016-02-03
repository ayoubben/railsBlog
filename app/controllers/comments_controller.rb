class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :build_sub_object, only: [:create]

  def create
    respond_to do |format|
      format.json { head 200 }
    end
  end

  def destroy
    Comment.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Comment was successfully deleted.' }
    end
  end

  private

  def create_comment_params
    params[:comment].try(:permit, :text, :post_id, :user_id)
  end

  def build_sub_object
    @comment = create_comment_params ? CreateComment.call(create_comment_params).task : Comment.new
  end
end
