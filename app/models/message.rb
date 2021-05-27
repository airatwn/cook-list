class Message < ApplicationRecord
  belongs_to :user

  validates :memo, presence: true
end
