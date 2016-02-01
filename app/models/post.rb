class Post < ActiveRecord::Base
  COLORS = {
    'vert1' => 'vert1',
    'vert2' => 'vert2',
    'blue1' => 'blue1',
    'move1' => 'move1',
    'darkblue' => 'darkblue',
    'vert3' => 'vert3',
    'vert4' => 'vert4',
    'blue2' => 'blue2',
    'move2' => 'move2',
    'darkblue2' => 'darkblue2',
    'carrot' => 'carrot',
    'rouge' => 'rouge',

  }

  has_many :comments

  has_attached_file :image, styles: { normal: "900x300>" }, default_url: "http://placehold.it/900x300"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  acts_as_taggable
end
