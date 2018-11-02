FactoryBot.define do
  factory :task do
    id {1}
    user
    title {'Tirar o lixo'}
    description {'O lixo precisa ser tirado pq...'}
    delegated {2}
    status {0}
  end
end
