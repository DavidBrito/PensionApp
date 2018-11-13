FactoryBot.define do
  factory :vacancy do
    value { "9.99" }
    status { 1 }
    room_id { 1 }
    owner_id { 1 }
  end
end
