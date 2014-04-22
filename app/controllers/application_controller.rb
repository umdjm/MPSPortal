class ApplicationController < ActionController::Base
  protect_from_forgery
  private
  def signed_in
    return !session[:sfdc_token].nil?
  end
  helper_method :signed_in
end
