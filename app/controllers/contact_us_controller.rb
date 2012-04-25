class ContactUsController < ApplicationController

  def new
   @contact_us = ContactUs.new
   render 'new'
  end

  def create
   @contact_us = ContactUs.new(params[:contact_us])
    if @contact_us.save
      redirect_to :root, :notice => 'Form Submitted successfully, you will be contacted soon.'
    else
       render 'new'
    end
  end

  def edit
    @contact_us = ContactUs.find(params[:id])
  end

  def update
   @contact_us = ContactUs.find(params[:id])
    if @contact_us.update_attributes(params[:contact_us])
      redirect_to :root, :notice => 'Form Updated successfully, you will be contacted soon.'
    else
      render 'edit'
    end
  end


end
