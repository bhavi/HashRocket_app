class User < ActiveRecord::Base
  has_one :address
  belongs_to :subscription_plan
  mount_uploader :image, ImageUploader
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encrypdtable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :firstname,:lastname,:username, :email, :password, :password_confirmation, :remember_me, :subscription_plan_id

  validates :username, :email, :presence => true
  validates :email, :uniqueness => true
 
end
