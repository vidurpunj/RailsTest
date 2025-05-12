class CreateStripeCustomerJob < ApplicationJob
  queue_as :default

  def perform(user_id)
    puts "creating stripe user is started"
    @user = User.find(user_id)
    customer = Stripe::Customer.create(
      email: @user.email,
      metedata: {
        user_id: @user.id
      }
    )
    @user.update(stripe_customer_id: customer.id)
  end
end
