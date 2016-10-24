class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include ActionController::HttpAuthentication::Basic::ControllerMethods
  include ActionController::HttpAuthentication::Token::ControllerMethods
  before_action :authenticate_user!
  before_filter :check_auth
  def check_auth
    authenticate_or_request_with_http_basic do |username,password|
      resource = User.find_by_name(username)
      if resource.valid_password?(password)
        sign_in :user, resource
      end
    end
  end
end
