class ApplicationController < ActionController::Base
  protect_from_forgery
  private
  def signed_in
    return !session[:access_token].nil?
  end
  helper_method :signed_in
end
