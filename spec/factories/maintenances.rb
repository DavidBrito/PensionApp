FactoryBot.define do
  factory :maintenance do
    user { nil }
    title { "MyString" }
    description { "MyText" }
    status { 1 }
  end
end
