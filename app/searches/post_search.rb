class PostSearch
  include ActiveData::Model

  SORT = { title: { 'title.sorted' => :asc }, relevance: :_score }.freeze

  attribute :query, type: String
  attribute :tags, mode: :arrayed, type: String
  attribute :sort, type: String, enum: %w(title relevance), default_blank: 'relevance'

  def index
    PostIndex
  end

  def search
    [query_string, sorting].compact.reduce(:merge)
  end

  def sorting
    index.order(SORT[sort])
  end

  def query_string
    index.query(query_string: { fields: [:title], query: query, default_operator: 'and' }) if query?
    index.filter(terms: { tags: [query] }) if query
  end
end
