class SessionsController < ApplicationController


  def new
  end

  def create
    producer = Producer.find_by_email(params[:email].downcase)
  	
    if producer && producer.authenticate(params[:password])
      # Sign the user in and redirect to the user's show page.
      sign_in producer
      redirect_back_or producer
    else
      # Create an error message and re-render the signin form.
      flash.now[:error] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
  	sign_out
    redirect_to root_url
  end
end
