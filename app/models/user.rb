class User < ActiveRecord::Base
  before_save :assign_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, styles: { mini: "64x64>" }, default_url: "http://placehold.it/64x64"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  belongs_to :role

  def assign_role
    self.role = Role.find_by name: "simple_user" if self.role.nil?
  end

  def super_user?
    self.role.name == "super_user"
  end

  def simple_user?
    self.role.name == "simple_user"
  end
end
