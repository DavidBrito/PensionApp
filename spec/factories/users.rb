FactoryBot.define do
  factory :user do
    id {100}
    name {"Jose Mario"}
    cpf {"12345678912"}
    email {"Fulano@email.com"}
    password {"password"}
    password_confirmation {"password"}
  end
end
