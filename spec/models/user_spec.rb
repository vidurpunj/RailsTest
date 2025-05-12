require 'rails_helper'

RSpec.describe User, type: :model do
  it "check email of the user" do
    user = FactoryBot.create(:user, name: "Punj", email: "punj@gmail.com", password: 12345678)
    expect(user.email).to eq("punj@gmail.com")
  end

  it "check name of the user" do
    user = FactoryBot.create(:user, name: "Rajesh", email: "rajesh@funds-axis.com", password: 12345678)
    expect(user.name).to eq("Rajesh")
  end

  it "create multiple users" do
    user1 = FactoryBot.create(:user)
    # For multiple user we should have multiple factory  users
    user2 = FactoryBot.create(:user)

    expect(user1.name).to eq("Subodh Punj")
    expect(user1.name).to eq("Subodh Punj")
  end

  it "enqueues the create stripe customer job" do
    expect{FactoryBot.create(:user)}.to have_enqueued_job(CreateStripeCustomerJob)
  end

end
