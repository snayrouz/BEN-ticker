require 'rails_helper'
describe "User Sees Daily Bitcoin Data" do
  it "views Bitcoin data" do
    #create a User

    visit 'dashboard_index_path'

    expect(response).to be_success
    expect(page).to have_content("Open")
    expect(page).to have_content("High")
    expect(page).to have_content("Low")
    expect(page).to have_content("Close")
    expect(page).to have_content("Volume")
    expect(page).to have_content("Market Cap")
  end
end
