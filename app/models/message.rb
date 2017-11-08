class Message < ApplicationRecord
  belongs_to :chatroom
  validates :content, presence: true
  validates :author, presence: true
end
