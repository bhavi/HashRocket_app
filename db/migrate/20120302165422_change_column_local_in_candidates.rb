class ChangeColumnLocalInCandidates < ActiveRecord::Migration
  def up
    change_column(:candidates, :local, :boolean)
  end

  def down
    change_column(:candidates, :local, :string)
  end
end
