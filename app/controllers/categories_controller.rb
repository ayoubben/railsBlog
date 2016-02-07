class CategoriesController < ApplicationController
  before_action :set_post, only: [:show]

  def show
    @posts = @category.posts.paginate(page: params[:page], per_page: 5).order('created_at DESC')
    @item = @category.code
  end

  private

  def set_post
    @category = Category.find(params[:id])
  end
end
