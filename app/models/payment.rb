class Payment < ActiveRecord::Base
belongs_to :billing_info

PROCESSING, FAILED, SUCCESS = 1, 2, 3

attr_accessor :stripe_card_token

# #validates :stripe_card_token, :presence => true

#  def purchase
#   status = PROCESSING

#   customer = Stripe::Customer.create(description:email, card:stripe_card_token)
#   # OPTIONAL: save customer token for further reference
#   stripe_customer_token = customer.id


#   # Charge
#   charge = Stripe::Charge.create(
#     :currency => "USD",
#     :customer => stripe_customer_token )

#    if charge.paid
#     self.transaction_num = charge.id
#     status = SUCCESS
#    else 
#     status = FAILED
#    end
#    return self
#    rescue Exception => e
#      errors.add :base, "There was a problem with your credit card."
#     status = FAILED
#      return self
#    end
end

