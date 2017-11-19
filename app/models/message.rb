class Message < ApplicationRecord
  belongs_to :chatroom
  validates :content, presence: true
  validates :author, presence: true
  after_create :broadcast

  private

  def broadcast
    ActionCable.server.broadcast('chat', as_json.merge(action: 'CreateMessage'))
  end
end
