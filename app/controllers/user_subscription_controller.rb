class UserSubscriptionController < ApplicationController
before_filter :authenticate_user!
  def index
    @plans= SubscriptionPlan.all
  end

  def subscribe
    if current_user.update_attributes(params[:user])
      redirect_to user_subscription_path, notice: 'Successfully created a plan'
    else
      render :index, alert: 'Error updating the user'
    end
  end


end
