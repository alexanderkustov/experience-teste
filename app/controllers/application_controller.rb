class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_producer
  before_filter :authorize
 
  protected
 
  def authorize
    unless Producer.find_by_id(session[:id])
      
    end
  end

  private

  def current_producer
  	@current_producer ||= Producer.find_by_id(session[:producer_id]) if session[:producer_id]
  end

end
