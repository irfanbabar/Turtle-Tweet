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

  	@user = User.new(strong_parameters(params[:user]))
  	if @user.save
      # flash[:success] = "Welcome to Turtle tweets"
      # redirect_to user_path(@user)
      
      # we can also refactor above two lines in this way

      redirect_to @user, flash: {:success=>"Welcome to Turtle tweets"}
    else
      @title = "Sign Up"
      render 'new'
    end
  end

  private

    def strong_parameters(user)
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
