class ApplicationController < ActionController::Base
  include Banken
  before_action :authenticate_user!
end
