class CreateBillingInfos < ActiveRecord::Migration
  def change
    create_table :billing_infos do |t|
      t.string :company
      t.string :address1
      t.string :address2
      t.string :apt
      t.string :cityname
      t.integer :state_id
      t.string :zipcode
      t.string :phone
      t.string :alternate_phone
      t.boolean :active
      t.boolean :agree

      t.timestamps
    end
  end
end
