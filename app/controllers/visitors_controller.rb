class VisitorsController < ApplicationController
  def index
    if params[:tag]
      @posts = Post.paginate(page: params[:page], per_page: 5).tagged_with(params[:tag])
    else
      @posts = Post.paginate(page: params[:page], per_page: 5)
    end
  end
end
