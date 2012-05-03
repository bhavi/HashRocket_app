class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.string :title
      t.time :duration
      t.datetime :release_date
      t.string :url

      t.timestamps
    end
  end
end
