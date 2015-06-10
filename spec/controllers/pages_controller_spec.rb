require 'rails_helper'

RSpec.describe PagesController, type: :controller do
   render_views
  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end

    it "should have a right title" do
      get :home
      expect(response.body).to have_selector("title", :text=> "Ruby on Rails Tutorial Turtle tweets | Home")
    end

    it "should have a non-blank body" do
      get'home'
      expect(response.body).should_not =~ /<body>\s*<\/body>/
    end
  end

  describe "GET #contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end

    it "should have a right title" do
      get :contact
      expect(response.body).to have_selector("title", :text=> "Ruby on Rails Tutorial Turtle tweets | Contact")
    end
  end

 describe "GET 'about'" do
  it "return http success" do
    get :about
    expect(response).to have_http_status(:success)
  end

  it "should have a right title" do
      get :about
      expect(response.body).to have_selector("title", :text=> "Ruby on Rails Tutorial Turtle tweets | About")
    end
 end
end
