require "rails_helper"

feature "User views dashboard show page" do
  scenario "successfully sees ticker" do
    visit dashboard_path
    expect(page).to have_headline_text
  end

  private
    def have_headline_text
      have_text ("BEN ticker")
    end
end
