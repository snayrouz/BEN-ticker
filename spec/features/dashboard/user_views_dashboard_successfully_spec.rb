require "rails_helper"

feature "User views currencies show page" do
  scenario "successfully sees ticker" do
    visit currencies_path
    expect(page).to have_headline_text
  end

  private
    def have_headline_text
      have_text ("BEN ticker")
    end
end
