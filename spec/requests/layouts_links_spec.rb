require 'spec_helper'

describe "LayoutsLinks" do

	it "shoud have a Home Page at '/' " do
		get '/'
		response.should have_selector("title", :content =>"Home")
	end
	
	it "should have a Contact Page at '/contact' " do
		get '/contact'
		response.should have_selector("title", :content =>"Contact")	
   end	
	
	it "should have an About Page at '/about'" do
		get '/about'
		response.should have_selector("title", :content => "About")	
	end
	
	it "should have a Help Page at '/help'" do
		get '/help'
		response.should have_selector("title", :content => "Help")	
	end

	it "should have a Help Page at '/sign up'" do
		get '/signup'
		response.should have_selector("title", :content => "Sign Up")	
	end
	
end
