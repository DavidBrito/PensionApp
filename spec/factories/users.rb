FactoryBot.define do
  
  # gera nome, email e cpf unicos para cada chamada de generate
  
  sequence(:email) {|n| ('a'..'z').to_a.shuffle[0,8].join + "#{n}@email.com" }
  sequence(:cpf) {|n| '%011d' % rand(10 ** 11).to_s }
  sequence(:name) {|n| "Jonh " + ('a'..'z').to_a.shuffle[0,3].join + "#{n}" }
  
  factory :user do
    name { generate :name }
    cpf { generate :cpf }
    email { generate :email }
    user_type { "tenant" }
    password { "password" }
    password_confirmation { "password" }
    
    factory :proprietary do
      user_type { 'proprietary' }
    end
    
    factory :tenant do
      user_type { 'tenant' }
    end
  end
end
