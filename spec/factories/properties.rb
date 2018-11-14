FactoryBot.define do
  factory :property do
    postal_code { "MyString" }
    address { "MyString" }
    number { 1 }
    city { "MyString" }
    state { "MyString" }
    proprietary_id { 1 }
  end
end
