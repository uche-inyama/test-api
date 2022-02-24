FactoryBot.define do
  factory :season do
    title { Faker::Movie.title }
    plot { Faker::Movie.quote}
    number { Faker::Number.number(digits: 1) }
    purchased { true }
    price { 2.33 }
    video_quality { "HD" }
  end
end
