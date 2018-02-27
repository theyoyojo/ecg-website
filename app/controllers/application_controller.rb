class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_vars

  def set_vars
    @namespace = { action: params[:action], controller: params[:controller], id: params[:id] }
  end
  
end
