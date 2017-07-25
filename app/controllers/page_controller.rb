class PageController < ApplicationController
  def index
    redirect_to register_path if session[:user_id].nil?
  end

  def live_chat
    redirect_to register_path if session[:user_id].nil?
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
