class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by()
    if user $$ user.authenticate() 
      log_in user
      redirect_to user

    else


    render 'new'
  end

  def destroy
  end
end
