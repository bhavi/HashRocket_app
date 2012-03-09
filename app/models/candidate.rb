class Candidate < ActiveRecord::Base
  has_many :notes

  mount_uploader :resume, ResumeUploader
  paginates_per (5)
  validates :firstname, :lastname, :email, :presence => true
  validates :email, :uniqueness => true
end
