class RenameUserIdToBillingInfoIdPayments < ActiveRecord::Migration
  def up
      rename_column :payments, :user_id, :billing_info_id
  end

  def down
      rename_column :payments, :billing_info_id, :user_id
  end
end
