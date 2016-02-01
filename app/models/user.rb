class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, styles: { mini: "64x64>" }, default_url: "http://placehold.it/64x64"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
