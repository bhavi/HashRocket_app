class RenameCountToTutorialsCountCategories < ActiveRecord::Migration
  def up
    rename_column :categories, :count, :tutorials_count
    
    Category.reset_column_information
    Category.all.each do |c|
      c.update_attribute :tutorials_count, c.tutorials.length
    end
  end

  def down
    rename_column :categories, :tutorials_count
  end
end
