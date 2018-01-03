class SessionsController < ApplicationController
  
  # def new
  # end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      render text: "success"
    else 
      redirect_to signin_url, alert: "Invalid email or password."
    end
  end

end
