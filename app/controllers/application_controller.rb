class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  skip_before_action  :verify_authenticity_token
  include DeviseTokenAuth::Concerns::SetUserByToken
  include ActionController::Serialization
end
