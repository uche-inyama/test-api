FactoryBot.define do
  factory :episode do
    title { Faker::Movie.title }
    plot { Faker::Movie.quote }
    episode_number { Faker::Number.number(digits: 1) }
    season_id { Faker::Number.number(digits: 1) }
  end
end
