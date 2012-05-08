class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :stripe_customer_token
      t.string :email
      t.integer :user_id

      t.timestamps
    end
  end
end
