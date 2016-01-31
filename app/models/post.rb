class Post < ActiveRecord::Base
  has_attached_file :image, styles: { normal: "900x300>" }, default_url: "http://placehold.it/900x300"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  acts_as_taggable
end
