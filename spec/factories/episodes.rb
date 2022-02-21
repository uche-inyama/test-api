FactoryBot.define do
  factory :episode do
    title { Faker::Movie.title }
    plot { Faker::Movie.quote }
    total_episode { Faker::Number.number(digits: 1) }
    season { Faker::Number.number(digits: 1) }
  end
end
