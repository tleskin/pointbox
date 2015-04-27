class SessionsController < ApplicationController

  def index
    if current_user
      authorize! :read, @current_user
      @available = current_user.available_points
      @redeemed = current_user.redeem_points
      @redeemed_rewards = current_user.rewards
    else
      flash[:error] = "You must sign in to see this information."
      redirect_to root_url
    end
  end

  def new
  end

  def create

    user = User.find_by(username: params[:session][:username])

    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to user
    else
      flash[:errors] = "Invalid login."
      render :new
    end
  end

  def destroy
    session.clear
    flash[:notice] = "Successfully logged out."
    redirect_to login_path
  end
end
