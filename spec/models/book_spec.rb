require 'rails_helper'

RSpec.describe Book, type: :model do
  it "Must have a published date < 2025" do
    # book = FactoryBot.create(:book) # this line will create a new book
    # book = FactoryBot.build(:book) # this will build a new book from the fixtures
    book = FactoryBot.create(:book, price: 200.20)
    expect(book.published_at).to be < DateTime.new(2025, 1, 1, 0, 0, 0)
    expect(book.price).to eq(200.20)
  end

    it "Must have a price = 400.20" do
      # book = FactoryBot.create(:book) # this line will create a new book
      # book = FactoryBot.build(:book) # this will build a new book from the fixtures
      book = FactoryBot.create(:book, price: 400.20)
      expect(book.published_at).to be < DateTime.new(2025, 1, 1, 0, 0, 0)
      expect(book.price).to eq(400.20)
    end

end
