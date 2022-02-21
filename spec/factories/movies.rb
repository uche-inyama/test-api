FactoryBot.define do
  factory :movie do
    title, { "MyString" }
    plot, { "MyString" }
    purchased { false }
    price { 1 }
    video_quality { "MyString" }
  end
end
