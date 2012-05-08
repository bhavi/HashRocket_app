class PaymentsController < ApplicationController
 def new
   @payment = Payment.new(params[:payment])
 end

 def create
  @payment = Payment.new(params[:payment])
    if @payment.valid?
      redirect_to root_url, :notice => 'Thanks for Purchase!'
   else
     render 'new'
   end 
 end 

  def show
    @payment = Payment.find(params[:id])
  end

end
