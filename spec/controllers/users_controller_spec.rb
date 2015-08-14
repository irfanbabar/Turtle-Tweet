require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  render_views 
  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
    it "should have right title" do 
      get 'new'
      expect(response.body).to have_selector("title", 
									      	  :text=>"Ruby on Rails Tutorial Turtle Tweets | Sign up", 
									      	  :visible=>false)
    end
  end

end
