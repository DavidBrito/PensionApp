FactoryBot.define do
  factory :user do
    id {1}
    email {"Fulando@email.com"}
    password {"password"}
    password_confirmation {"password"}
  end
end
