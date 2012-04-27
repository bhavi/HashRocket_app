class AddressesController < ApplicationController
 def new
   @user = User.find(params[:id])
   @address = User.addresses.nuild
 end

end

