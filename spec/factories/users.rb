FactoryBot.define do
  
  # gera email e cpf unicos para cada chamada de generate
  
  sequence(:email) {|n| ('a'..'z').to_a.shuffle[0,8].join + "#{n}@email.com" }
  sequence(:cpf) {|n| '%010d' % rand(10 ** 11) }
  
  factory :user do
    name { "John Usuario" }
    cpf { generate :cpf }
    email { generate :email }
    user_type { "tenant" }
    password { "password" }
    password_confirmation { "password" }
    
    factory :owner do
      name { "John Proprietario" }
      user_type { 'owner' }
    end
    
    factory :tenant do
      name { "John Inquilino" }
      user_type { 'tenant' }
    end
  end
end
