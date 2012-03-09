class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :firstname
      t.string :lastname
      t.string :phone
      t.string :email
      t.string :github
      t.string :twitter
      t.string :local
      t.boolean :willing_to_relocate
      t.date :added_on
      t.string :status

      t.timestamps
    end
  end
end
