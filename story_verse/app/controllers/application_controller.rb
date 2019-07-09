class ApplicationController < ActionController::Base

  before_action :setup_auth

  def setup_auth
    @user_id = session[:user_id]
    @logged_in = !!@user_id
    if @logged_in
      @current_user = User.find(@user_id)
    end
  end

  def authorized
    unless @logged_in
      flash[:message] = "you are not logged in yet!"
      return redirect_to stories_path
    end
  end

end
