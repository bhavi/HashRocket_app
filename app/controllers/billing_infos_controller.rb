class BillingInfosController < ApplicationController

  def index
    @plan = SubscriptionPlan.where(:id => current_user.subscription_plan_id)
    @billing_info = BillingInfo.new(current_user.attributes.slice('firstname', 'lastname', 'email'))
  end

  def show
    @plan_id = current_user.subscription_plan_id
    @plan = SubscriptionPlan.where(:id => @plan_id)
    @billing_info = BillingInfo.find(params[:id])
  end


  def create
    @billing_info = BillingInfo.new(params[:billing_info])
    @billing_info.user = current_user
      if @billing_info.save
        redirect_to billing_info_path
      else
        render 'new', :alert => "billing info not saved"
    end
  end

  def update
    @billing_info = BillingInfo.find(params[:id])
    if @billing_info.update_attributes(params[:billing_info])
      redirect_to billing_info_path
    else
       render 'edit', :alert =>"Billing Info not updated"
    end
  end

  def destroy

  end

end
