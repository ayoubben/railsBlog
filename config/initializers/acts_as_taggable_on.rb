ActsAsTaggableOn::Tag.class_eval do
  has_many :posts, through: :taggings, source: :taggable, source_type: 'Post'
  update_index 'post#post', :posts
end
ActsAsTaggableOn::Tagging.class_eval do
  update_index('post#post') { taggable if taggable_type == 'Post' }
end
