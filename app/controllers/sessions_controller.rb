
class SessionsController < ApplicationController
  def create
    ENV['sfdc_token'] = request.env['omniauth.auth']['credentials']['token']
    ENV['sfdc_instance_url'] = request.env['omniauth.auth']['instance_url']
    raise request.env['omniauth.auth'].to_yaml
  end
end
