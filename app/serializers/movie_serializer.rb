class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :plot, :number, :purchased, :price, :video_quality
end
