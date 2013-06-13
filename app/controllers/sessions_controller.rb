class SessionsController < ApplicationController
  skip_before_filter :authorize


  def new
  end

  def create
  	producer = Producer.authenticate(params[:email], params[:password])
    if producer and producer.authenticate(params[:password])
      session[:id] = producer.id
      redirect_to root :controller=>'producers', :action => 'show'
    else
      #redirect_tonation"
    end
  end

  def destroy
  	session[:id] = nil
    redirect_to root_url
  end
end
