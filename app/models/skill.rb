class Skill < ActiveRecord::Base
 has_many :candidate_skills
 has_many :candidates, :through => :candidate_skills
validates :name, :presence=>true, :uniqueness => true
end
