FactoryBot.define do
  factory :task do
    association :owner, factory: :tenant, strategy: :create
    title {'Tirar o lixo'}
    description {'O lixo precisa ser tirado pq...'}
    delegated {2}
    status {0}
  end
end
