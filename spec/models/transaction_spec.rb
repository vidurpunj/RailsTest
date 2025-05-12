require 'rails_helper'

RSpec.describe Transaction, type: :model do
  it "correctly dervies if its a buy" do
    transaction = FactoryBot.create(:transaction)
    expect(transaction).to be_buy
  end

  it "correctly derives if its a valid buy" do
    transaction = FactoryBot.create(:transaction)
    expect(transaction).to be_be_valid
  end

  it "correctly derives if product quantity is right" do
    transaction = FactoryBot.create(:transaction)
    expect(transaction).to be_is_right
  end

  it "correctly derives max amount limit" do
    transaction = FactoryBot.create(:transaction)
    expect(transaction).to be_max_amount
  end
end
