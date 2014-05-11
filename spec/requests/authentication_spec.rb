require 'spec_helper'

describe "Sign out link" do
	it "should sign out you clicked" do
		login_user 
		page.should have_content("Bienvenido")

		click_link "Sign out"
		page.should have_content("Sign in")
		page.should_not have_content("Bienvenido")
	end
end