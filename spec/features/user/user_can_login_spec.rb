require 'rails_helper'

describe "User Logs In" do
  it "can login from the home page" do
    visit '/'

    click_link "Login"

    expect(response).to be_success
    expect(currency_path).to be(currencies_path)
    expect(page).to have_content("BEN ticker")
    expect(page).to have_link("Logout")
  end
end
