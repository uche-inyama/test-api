class Season < ApplicationRecord
  has_many :episodes, -> { order(episode_number: :desc) }, dependent: :destroy

  validates :title, presence: true
  validates :plot, presence: true
  validates :number, presence: true
  validates :price, presence: true
  validates :video_quality, presence: true

  scope :season_episodes, -> { self.order(created_at: :desc) }

  def self.index_json
    query = <<-SQL
    SELECT COALESCE(array_to_json(array_agg(row_to_json(query_row))), '[]'::json)
    FROM (
      SELECT 
        *
      FROM movies
      UNION
      SELECT *
      FROM seasons
      ORDER BY created_at DESC
    ) query_row
    SQL
    self.connection.select_value query
  end
  
end
