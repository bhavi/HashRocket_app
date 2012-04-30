class BillingInfoController < ApplicationController

  def index
    @plan_id = current_user.subscription_plan_id
    @plan = SubscriptionPlan.where(:id => @plan_id)
    @user = current_user
  end

  def show
    @address = Address.find(params[:id])
    @plan_id = current_user.subscription_plan_id
    @plan = SubscriptionPlan.where(:id => @plan_id)
    @user = current_user
  end

  def new
    @address = Address.new(params[:address])
  end

  def create
    @address = Address.create(params[:address])
    if @address.save
      # render 'show'
      else
      # redirect_to billing_info_path, :alert => "billing info not saved"
    end
  end
  def update
    @address = Address.find(params[:id])
    if @address.update_attributes(params[:address])
      render 'show'
    else
        # redirect_to billing_info_path, :alert "address not updated"
    end
  end

  def destroy

  end

end
