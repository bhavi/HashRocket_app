class BillingInfoController < ApplicationController
  def show
    @plan = current_user.subscription_plan_id
  end

  def update

  end

  def destroy

  end

end
