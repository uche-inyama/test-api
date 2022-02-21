class Season < ApplicationRecord
  has_many :episodes, dependent: :destroy

  validates :title, presence: true
  validates :plot, presence: true
  validates :number, presence: true
  validates :purchased, presence: true
  validates :price, presence: true
  validates :video_quality, presence: true
end
