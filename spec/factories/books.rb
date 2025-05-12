FactoryBot.define do
  factory :book do
    sequence(:name) { |n| "Book #{n}" }
    published_at { "2022-05-05 14:54:19" }
    sequence(:price) { |n| 100.5 + n }
    sequence(:subject) { |n| "Subject #{n}" }
    sequence(:pages) { |n| 100 + n }

    trait :english_grammar do
      name { "English Grammar" }
      price { 100.5 }
      subject { "English" }
      pages { 100 }
    end

    trait :hindi_course do
      name { "Hindi Course" }
      price { 210.5 }
      subject { "Hindi" }
      pages { 210 }
    end

    trait :maths_guide do
      name { "Maths Guide" }
      price { 150.0 }
      subject { "Maths" }
      pages { 150 }
    end

    trait :science_textbook do
      name { "Science Textbook" }
      price { 180.0 }
      subject { "Science" }
      pages { 180 }
    end

    trait :history_book do
      name { "History Book" }
      price { 130.0 }
      subject { "History" }
      pages { 130 }
    end
  end
end
