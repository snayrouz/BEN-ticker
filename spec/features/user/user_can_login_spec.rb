require 'rails_helper'

describe "User Logs In" do
  it "can login from the home page" do
    visit '/'

    click_link "Login with Coinbase"

    expect(response).to be_success
    expect(page).to have_content("Profile Page")
    expect(page).to have_link("Logout")
  end
end
