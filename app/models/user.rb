class User < ActiveRecord::Base

  mount_uploader :image, ImageUploader
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encrypdtable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :image

  validates :name, :email, :presence => true
  validates :email, :uniqueness => true
 
end
