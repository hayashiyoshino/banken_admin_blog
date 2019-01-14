class ApplicationController < ActionController::Base
  include Banken
  before_action :authenticate_user!

  def current_user
  if params[:user_id].blank?
    current_user
  else
    User.find(params[:user_id])
  end
end
end
