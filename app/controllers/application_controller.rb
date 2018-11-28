class ApplicationController < ActionController::Base

  include DeviseWhitelist #in concern file we have module
  
  before_action :set_source
  def set_source
    session[:source] = params[:q] if params[:q]
  end
end
