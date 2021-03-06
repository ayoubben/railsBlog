class Post < ActiveRecord::Base
  extend FriendlyId

  COLORS =
    {
      'info' => 'info',
      'move' => 'move',
      'warning' => 'warning',
      'success' => 'success'
    }.freeze

  validates :title, :text, :category_id, presence: true

  has_many :comments
  belongs_to :category

  friendly_id :title, use: [:slugged, :history]

  def to_param
    "#{id} #{title}".parameterize
  end

  def should_generate_new_friendly_id?
    new_record?
  end

  has_attached_file :image, styles: { normal: "900x300>" }, default_url: "http://placehold.it/900x300"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  acts_as_taggable

  def first_text_lines(n)
    self.text.split("\n").first(n).join("\n")
  end
end
