class ApplicationController < ActionController::Base
  include Trails::Twilio
  protect_from_forgery


end
