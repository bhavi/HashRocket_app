class AddNameDetailsToBillingInfo < ActiveRecord::Migration
  def change
    add_column :billing_infos, :firstname, :string

    add_column :billing_infos, :lastname, :string

    add_column :billing_infos, :email, :string

  end
end
