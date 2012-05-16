class Tutorial < ActiveRecord::Base
belongs_to :category, :counter_cache => true

scope :by_category_id, lambda{ |category_id| where(:category_id=> category_id) unless category_id.nil? }
end
