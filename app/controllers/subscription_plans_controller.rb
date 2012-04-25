class SubscriptionPlansController < ApplicationController

  def index
    @plans = SubscriptionPlan.find(:all)
  end

  def new
    @plan = SubscriptionPlan.new
  end
  
  def show
    @plan = SubscriptionPlan.find(params[:id])
  end 

  def create
   @plan = SubscriptionPlan.create(params[:subscription_plan])
      if @plan.save
        redirect_to subscription_plans_path, :notice => "Plan successfully created."
      else
        render 'new'
      end
  end

  def edit
    @plan = SubscriptionPlan.find(params[:id])
  end

  def update
    @plan = SubscriptionPlan.find(params[:id])
    if @plan.update_attributes(params[:subscription_plan])
      redirect_to subscription_plans_path
    else
     render 'edit'
    end
  end
end
