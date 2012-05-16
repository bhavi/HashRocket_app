class CategoriesController < ApplicationController
  def index
    @categories = Category.find(:all, :include => :tutorials)
    @tutorials = Tutorial.order(:category_id)
  end
end
