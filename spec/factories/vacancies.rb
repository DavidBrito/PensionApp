FactoryBot.define do
  factory :vacancy do
    value { 320.to_f }
    status { 0 }
    association :room, factory: :room, strategy: :create
    
    factory :vacancy_occupied do
      status { 1 }
      association :user, factory: :tenant, strategy: :create
    end
    
  end
end
