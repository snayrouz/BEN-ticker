require 'rails_helper'

RSpec.describe "As a visitor I can login" do
	it "as a user I can log out" do
		user = User.create(first_name: "Tester",
                       last_name: "McTesty",
                       email: "testerson@testmail.com",
                       password: "testing",
											 username: "blah")

    visit '/'
		click_on 'Login'

    fill_in "session[username]", with: "blah"
		fill_in "session[password]", with: "testing"

		within(".login") do
			click_on("Login")
		end

    click_on 'Logout'
		expect(page).to have_content("Login")
	end
end
