class SessionsController < ApplicationController
  def new
    raise env["omniauth.auth"].to_yaml
    session[:access_token] = env["omniauth.auth"]["access_token"]
    redirect_to root_url, notice: "Signed In!"
  end

  def destroy
    session[:access_token] = nil
    redirect_to root_url, notice: "Signed Out!"
  end
end
