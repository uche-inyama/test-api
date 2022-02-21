class Movie < ApplicationRecord
  validates :title, presence: true
  validates :plot, presence: true
  validates :purchased, presence: true
  validates :price, presence: true
  validates :video_quality, presence: true
end
