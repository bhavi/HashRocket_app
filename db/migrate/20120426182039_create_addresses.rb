class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :company
      t.string :address1
      t.string :address2
      t.string :apt
      t.string :cityname
      t.integer :state_id
      t.string :zip_code
      t.string :phone
      t.string :alternate_phone
      t.boolean :active

      t.timestamps
    end
  end
end
