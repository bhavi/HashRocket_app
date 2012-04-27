class AddressType < ActiveRecord::Base
  validates :name, :presence => true,       :length => { :maximum => 55 }
end
