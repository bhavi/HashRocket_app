class CreateCandidateSkills < ActiveRecord::Migration
  def change
    create_table :candidate_skills do |t|

      t.timestamps
    end
  end
end
