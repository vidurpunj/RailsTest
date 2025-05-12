require 'rails_helper'

RSpec.describe CreateStripeCustomerJob, type: :job do
  it "creates stripe customer and saves its id in user" do
    allow(
      Stripe::Customer
    ).to receive(:create).and_return(
      Stripe::Customer.new(id: "cus_test")
    )

    user = FactoryBot.create(:user)
    expect{
      CreateStripeCustomerJob.perform_later(user.id)
    }.to have_enqueued_job(CreateStripeCustomerJob)
  end
end
