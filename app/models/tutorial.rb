class Tutorial < ActiveRecord::Base
belongs_to :category, :counter_cache => true
end
