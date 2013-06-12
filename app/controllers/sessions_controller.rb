class SessionsController < ApplicationController


  skip_before_filter :authorize


  def new
  end

  def create
  	producer = Producer.find_by_email(params[:email])
    if producer and producer.authenticate(params[:password])
      session[:id] = producer.id
      redirect_to root :controller=>'producers', :action => 'show'
    else
      #redirect_to 'products#index' , alert: "Invalid user/password combination"
    end
  end

  def destroy
  	session[:id] = nil
  end
end
