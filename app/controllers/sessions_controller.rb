class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:login][:email].downcase)
    # user = User.find_by_email(params[:email])
    # If the user exists AND the password entered is correct.
    if user && user.authenticate(params[:login][:password])
    # if user && user.authenticate(params[:password])
      # Save the user id inside the browser cookie. This is how we keep the user 
      # logged in when they navigate around our website.
      session[:user_id] = user.id.to_s
      redirect_to root_path, notice: 'Successfully logged in!'
    else
      flash.now.alert = "Incorrect email or password, try again."
    # If user's login doesn't work, send them back to the login form.
      redirect_to '/login'
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to login_path, notice: "Logged out!"
  end

end