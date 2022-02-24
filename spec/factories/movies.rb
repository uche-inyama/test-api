FactoryBot.define do
  factory :movie do
    title { Faker::Movie.title }
    plot { Faker::Movie.quote}
    number { 0 }
    purchased { true }
    price { 2.33 }
    video_quality { "HD" }
  end
end