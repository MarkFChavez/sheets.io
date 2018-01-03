class SessionsController < ApplicationController
  
  # def new
  # end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      render text: "success"
    else 
      render :new
    end
  end

end
