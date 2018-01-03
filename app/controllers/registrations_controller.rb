class RegistrationsController < ApplicationController

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    
    if @user.save
      # store in session as well...
      session["user_id"] = @user.id
      redirect_to dashboard_url
    else 
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
