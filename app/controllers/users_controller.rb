class UsersController < ApplicationController
before_filter :authenticate_user!
expose(:user)
expose(:users) {User.page(params[:page]).per(5)}

    def index
    end

    def new
       user.build_billinginfo
    end

    def create
      if user.save
        redirect_to user, :notice => "User created Successfully!"
      else
        render :action =>"new"
      end
    end


    def show
    end

  def update
    respond_to do |format|
      if user.update_attributes(params[:user])
        format.html {redirect_to user , :notice => "User updated successfully"}
      else 
        format.html {render :action => "edit"}
      end
    end
  end

  def destroy
     user.destroy
      flash[:notice] = "Successfully destroyed user"
      redirect_to users_path
  end


end
