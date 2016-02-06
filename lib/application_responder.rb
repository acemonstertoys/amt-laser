class ApplicationResponder < ActionController::Responder
  include Responders::FlashResponder
  include Responders::LocationResponder
end