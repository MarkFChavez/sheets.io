class SessionsController < ApplicationController

  # def new
  # end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      # store in session
      session["user_id"] = user.id
      redirect_to dashboard_url
    else
      redirect_to signin_url, alert: "Invalid email or password."
    end
  end

  def destroy
    session["user_id"] = nil
    redirect_to signin_url
  end

end
