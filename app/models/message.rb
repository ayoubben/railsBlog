class Message < ActiveRecord::Base
  validates :name, :text, :email, presence: true
end
