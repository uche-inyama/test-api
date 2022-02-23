class SeasonSerializer < ActiveModel::Serializer
  attributes :id, :title, :plot, :number, :purchased, :price, :video_quality

  has_many :episodes
end
