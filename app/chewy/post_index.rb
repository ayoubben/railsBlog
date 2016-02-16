class PostIndex < Chewy::Index
  settings analysis: {
    analyzer: {
      title: {
        tokenizer: 'standard',
        filter: %w(lowercase asciifolding)
      },
      sorted: {
        tokenizer: 'keyword',
        filter:  %w(lowercase asciifolding)
      }
    }
  }

  define_type Post.includes(:tags) do
    field :title, type: 'multi_field' do
      field :title, index: 'analyzed', analyzer: 'title'
      field :text, index: 'analyzed', analyzer: 'title'
      field :sorted, index: 'analyzed', analyzer: 'sorted'
    end
    field :tags, index: 'not_analyzed', value: -> { tags.map(&:name) }
  end
end
