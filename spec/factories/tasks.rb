FactoryBot.define do
  factory :task do
    pk_task {1}
    #fk_task_user {'x3c4v6'}
    title {'Tirar o lixo'}
    description {'O lixo precisa ser tirado pq...'}
    delegated {'b5c3v1'}
    status {0}
  end
end
