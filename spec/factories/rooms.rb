FactoryBot.define do
  
  sequence(:number) {|n| rand(10 ** 3) }
  
  factory :room do
    number { generate :number }
    association :property, factory: :property, strategy: :create
  end
end
