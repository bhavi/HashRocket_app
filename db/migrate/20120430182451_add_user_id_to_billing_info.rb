class AddUserIdToBillingInfo < ActiveRecord::Migration
  def change
    add_column :billing_infos, :user_id, :integer

  end
end
