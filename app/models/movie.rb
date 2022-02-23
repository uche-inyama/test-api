class Movie < ApplicationRecord
  validates :title, presence: true
  validates :plot, presence: true
  validates :number, presence: true
  validates :purchased, presence: true
  validates :price, presence: true
  validates :video_quality, presence: true

  scope :all_movies, -> { Movie.order(created_at: :desc) }

end
