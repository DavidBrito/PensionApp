FactoryBot.define do

  factory :employee do
    first_name { "Joel" }
    last_name { "Soartes" }
    cpf { generate :cpf }
    contact { "24986553215" }
  end
end
