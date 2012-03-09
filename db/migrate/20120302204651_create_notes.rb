class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :text
      t.date :date
      t.references :candidate

      t.timestamps
    end
    add_index :notes, :candidate_id
  end
end
