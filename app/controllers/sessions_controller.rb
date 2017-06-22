class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: session_params[:username])
    if @user && @user.authenticate(session_params[:password])
      session[:user_id] = @user.id
      redirect_to welcome_path
    else
      render :new
    end
  end

  private

  def session_params
    params.require(:user).permit(:username, :password)
  end

end
