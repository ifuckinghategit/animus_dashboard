class AddPaypalToUsers < ActiveRecord::Migration
  def change
    add_column :users, :PayPal, :string
  end
end
