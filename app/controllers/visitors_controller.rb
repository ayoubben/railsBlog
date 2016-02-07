class VisitorsController < ApplicationController
  def index
    if params[:tag]
      @posts = Post.paginate(page: params[:page], per_page: 5).tagged_with(params[:tag]).order('created_at DESC')
    else
      @posts = Post.paginate(page: params[:page], per_page: 5).order('created_at DESC')
    end
  end
end
