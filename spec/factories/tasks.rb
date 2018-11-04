FactoryBot.define do
  factory :task do
    id {100}
    association :user, factory: :user, strategy: :build
    title {'Tirar o lixo'}
    description {'O lixo precisa ser tirado pq...'}
    delegated {2}
    status {0}
  end
end
