class SeasonSerializer < ActiveModel::Serializer
  attributes :id, :title, :plot, :number, :price, :video_quality

  has_many :episodes
end
