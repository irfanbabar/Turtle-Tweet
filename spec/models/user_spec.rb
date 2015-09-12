require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
	before(:each) do
     @attr = {:name=>"Example User", :email=>"user@example.com"}
   end

  describe "password" do
  	before(:each) do 
  		@user = User.new(@attr)
  	end
	  	it "should have password attribute" do
	  		@user.should respond_to(:password)
	  	end
	  	it "should have password confirmation attribute" do
	  		@user.should respond_to(:password_confirmation)
	  	end
  end

  describe "password validations" do 
  	it "should require a password" do 
  		User.new(@attr.merge(:password=>"", :password_confirmation=>"")).
  		should_not be_valid
  	end

  	it "should require a matching password confirmation" do
  		User.new(@attr.merge(:password_confirmation=>"invalid")).
  		should_not be_valid
  	end
  	it "should reject short password" do
  		short = "a"*5
  		hash = User.new(:password=>short, :password_confirmation=>short).
  		should_not be_valid
  	end

  	it "should reject long password" do
  		long = "a"*41
  		hash = User.new(:password=>long, :password_confirmation=>long).
  		should_not be_valid 
  	end
  end

end
