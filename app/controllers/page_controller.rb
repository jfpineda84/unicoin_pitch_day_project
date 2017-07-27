class PageController < ApplicationController
  def index
    @user_response = UserResponse.new
    redirect_to login_path if session[:user_id].nil?
  end

  def live_chat
    redirect_to login_path if session[:user_id].nil?
  end

  def secret
  redirect_to root_path unless current_user.admin?
  end

  def about_us
  end

  def faq
  end

  protected

  def authenticate!
    redirect_to new_session_path and return unless signed_in?
  end




end
