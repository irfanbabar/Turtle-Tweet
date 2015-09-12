require 'rails_helper'

RSpec.describe "LayoutLinks", type: :request do
  # describe "GET /layout_links" do
  #   it "works! (now write some real specs)" do
  #     get layout_links_index_path
  #     expect(response).to have_http_status(200)
  #   end
  # end
 describe "GET /layout_links" do 
	   it "should have a Home page at '/'" do
		 get "/"
		 expect(response).to have_http_status(200)
		 # expect(response).to have_selector("title", :text=>"Home")
	   end

	   it "should have Contact page at '/contact'" do
		 get "/contact"
		 expect(response).to have_http_status(200)
	   end

	   it "should have About page at '/about'" do
		 get "/about"
		 expect(response).to have_http_status(200)
	   end

	   it "should have Help page at '/help'" do
		 get "/help"
		 expect(response).to have_http_status(200)
	   end
  end
end
