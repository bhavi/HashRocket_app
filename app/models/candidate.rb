class Candidate < ActiveRecord::Base
  has_many :notes
  has_many :candidate_skills
  has_many :skills, :through => :candidate_skills
  scope :rejected, -> { where(status: 'Rejected') }

  scope :pending, -> { where(status: 'Pending') }

  scope :hired, -> { where(status: 'Hired') }

  mount_uploader :resume, ResumeUploader
  paginates_per (5)
  validates :firstname, :lastname, :email, :presence => true
  validates :email, :uniqueness => true

  end
