class ApplicationController < ActionController::Base
  include Banken
  # binding.pry
  before_action :authenticate_user!

  # HASH_DATA = { user: current_user}

end
