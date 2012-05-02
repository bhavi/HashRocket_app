class BillingInfo < ActiveRecord::Base
belongs_to :user

  def plan_cannot_be_blank
    if current_user.subscription_plan_id.blank?
      errors.add("Please choose a Subscription Plan")
    else
      redirect_to billing_infos_path
    end
  end
end
