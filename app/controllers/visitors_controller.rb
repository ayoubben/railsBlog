class VisitorsController < ApplicationController
  def index
    @search = if params[:search].nil?
                PostSearch.new
              else
                PostSearch.new(params[:search])
              end
    @posts =  if params[:tag]
                Post.paginate(page: params[:page], per_page: 5).tagged_with(params[:tag])
              else
                @search.search.only(:id).paginate(page: params[:page], per_page: 5).load(post: { scope: Post.all })
              end
  rescue Elasticsearch::Transport::Transport::Errors::BadRequest => e
    @posts = []
    @error = e.message.match(/QueryParsingException\[([^;]+)\]/).try(:[], 1)
  end
end
