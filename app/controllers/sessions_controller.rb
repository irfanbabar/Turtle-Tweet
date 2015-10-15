class SessionsController < ApplicationController
  def new
  	@title = "Sign In"
  end

  def create
  	#  in params session will be like this
  	# {:session => { :email=> "", :passsword => "" }}

    user = User.authenticate(params[:session][:email],
  						 params[:session][:password])
    if user.nil?
    	flash.now[:error] = "Invalid email/password combination"
    	# flash.now, it means remain only in current request, if new request is made even it is first request after error, remove flash

    	@title = "Sign In"
    	render "new"
    else
    end
  end

  def destroy
  end
end
