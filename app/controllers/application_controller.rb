class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authorize
 
  protected
 
  def authorize
    unless Producer.find_by_id(session[:id])
      
    end
  end

end
