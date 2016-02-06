require "application_responder"
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  self.responder = ApplicationResponder
  respond_to :html, :json
end
