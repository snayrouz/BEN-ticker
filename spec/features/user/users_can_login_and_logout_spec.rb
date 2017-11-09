require 'rails_helper'

describe "User Logs In" do
  it "can login from the home page" do
    user = User.create(first_name: "Tester",
                       last_name: "McTesty",
                       email: "testerson@testmail.com",
                       password: "testing",
                       username: "blah",
                       phone: '11111111111')
    visit '/'

    click_link "Login"
    expect(current_path).to be(login_path)

    fill_in "session[username]", with: "blah"
    fill_in "session[password]", with: "testing"

    expect(current_path).to be(currency_path)
    expect(page).to have_content("BEN ticker")
    expect(page).to have_link("Logout")
    expect(page).to have_link("Welcome, Tester")

  end
  it "as a user I can log out" do
    user = User.create(first_name: "Tester",
                       last_name: "McTesty",
                       email: "testerson@testmail.com",
                       password: "testing",
                       username: "blah",
                       phone: '11111111111')

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
