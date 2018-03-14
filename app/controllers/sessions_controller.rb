class SessionsController < ApplicationController
  skip_before_action :authorize

  def new
    @selectedSignIn = "is-selected"
  end

  def create
    session[:cart_prod] = Array.new
    session[:cart_qty] = Array.new
    user = Account.find_by_email(params[:email])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      #'login_url' is whatever url you end up using for logging in
      redirect_to root_url, notice => "Logged in!"
    else
      @loginMsg = "* The username or password is incorrect"
      render "new"
    end
  end

  def destroy
    session[:cart_prod] = Array.new
    session[:cart_qty] = Array.new
    session[:user_id] = nil
    #same thing with login url again
    redirect_to login_url, :notice => "Logged out!"
  end
end
