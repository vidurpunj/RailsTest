class AddStripeCustomerIdToUser < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :stripe_customer_id, :string, default: nil
  end
end
