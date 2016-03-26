class AddStripeIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :stripe_id, :string
  end
end
