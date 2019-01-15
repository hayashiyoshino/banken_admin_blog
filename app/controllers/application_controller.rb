class ApplicationController < ActionController::Base
  include Banken
  # binding.pry
  before_action :authenticate_user!



end
