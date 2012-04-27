class AddPlanIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :subscription_plan_id, :int

  end
end
