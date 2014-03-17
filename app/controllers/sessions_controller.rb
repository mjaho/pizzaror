class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by username: params[:username]
    if user.nil? or not user.authenticate params[:password]
      redirect_to :back, notice: "username and password do not match"
    else
      session[:user_id] = user.id if not user.nil?
      session[:user_accesslevel] = user.userlevel if not user.nil?
      redirect_to user, notice: "Welcome back!"
    end
  end

  def destroy
    session[:user_id] = nil
    session[:user_accesslevel] = nil
    redirect_to :root
  end
end