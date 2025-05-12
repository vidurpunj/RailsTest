FactoryBot.define do
  factory :user do
    name {"Subodh Punj"}
    sequence(:email) { |n| "subodhs.#{n}@hotmail.com"}
    created_at {DateTime.new(2025,1,1,1,1,1)}
    password { rand(1000000..10000000) }
  end
end