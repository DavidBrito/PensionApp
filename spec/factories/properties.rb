FactoryBot.define do
  factory :property do
    name {"Pensionato"}
    postal_code { "01513030" }
    address { "Rua 9 de Julho" }
    number { 1024 }
    city { "Recife" }
    state { "Pernambuco" }
    association :proprietary, factory: :proprietary, strategy: :create
  end
end
