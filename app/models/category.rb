class Category < ActiveRecord::Base
  extend FriendlyId
  has_many :posts

  friendly_id :title, use: [:slugged, :history]

  def to_param
    "#{id} #{title}".parameterize
  end
end
