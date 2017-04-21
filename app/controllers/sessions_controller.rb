class SessionsController < ApplicationController
  def new
  end

  def create
  user =  User.find_by(name: params[:user][:name])
     if user.present? && user.authenticate(params[:user][:password])
       session[:user_id] = user.id
       redirect_to user_path(user)
     else
       flash[:notice] = "Invalid user name and/or password"
       redirect_to login_path
     end
  end

  def destroy
    session.clear
    redirect_to login_path
  end

end
