class UsersController < ApplicationController
  
  def show
  	@user = User.find(params[:id])
  end
  
  def new
  	@title = "Sign up"
  	@user = User.new
  end

  def create
  	# raise will raise an exceptional runtime error, use for debugging
  	# raise params[:user].inspect

  	@user = User.new(params[:user])
  	@user.save
  	render 'new'
  end
end
