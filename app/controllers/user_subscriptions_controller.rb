class UserSubscriptionsController < ApplicationController
before_filter :authenticate_user!
before_filter :validate_plan, :only => :subscribe

  def index
    @plans= SubscriptionPlan.all
  end

  def subscribe
    if current_user.update_attributes(params[:user])
      redirect_to billing_infos_path, notice: 'Successfully created a plan'
    else
      render :index, alert: 'Error updating the user'
    end
  end

  def validate_plan
    if params[:user][:subscription_plan_id].blank?
      redirect_to user_subscriptions_path, :alert => "Please choose a Plan"
    end
  end


end
