class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :plot, :number, :price, :video_quality
end
