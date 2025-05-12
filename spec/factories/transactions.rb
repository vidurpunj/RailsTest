FactoryBot.define do
  factory :transaction do
        association :user
        association :product
        quantity { rand(1..10) }
        total_price { (product.price * quantity).round(2) }
  end
end
