class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      #user.id will be stored in your blowser's cokkie defining like upper, session[:user_id]
      flash[:success] = "You have successfully logged in"
      redirect_to user_path(user)
    else
      flash.now[:danger] = "There was something wrong with your login information"
      render 'new'
    end
  end

  def destroy
     session[:user_id] = nil
     # if destory is called, session[:user_id] will be nil. it means will be kicked out of "logged_in?"
     flash[:success] = "You have logged out"
     redirect_to root_path
  end
end
