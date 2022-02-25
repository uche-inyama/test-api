class Episode < ApplicationRecord
  belongs_to :season
  
  validates :title, presence: true
  validates :plot, presence: true
  validates :episode_number, presence: true
  validates :season_id, presence: true
end
