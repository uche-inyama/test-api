FactoryBot.define do
  factory :library do
    title { Faker::Movie.title }
    content { Faker::Movie.quote }
    status { true }
    user_id { nil }
  end
end
