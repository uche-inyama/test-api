FactoryBot.define do
  factory :movie do
    title { Faker::Movie.title }
    plot { Faker::Movie.quote}
    number { 0 }
    price { 2.33 }
    video_quality { "HD" }
  end
end