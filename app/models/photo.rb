class Photo < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :title, presence: true
  validates :text,  presence: true
  validates :date,  presence: true
end
