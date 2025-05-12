FactoryBot.define do
  factory :product do
    sequence(:name) { |n| "Product #{n}" }
    sequence(:price) { rand(5.0..100.0).round(2) }
  end
end
