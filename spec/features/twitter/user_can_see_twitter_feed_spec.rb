require 'rails_helper'

  describe "User views currencies dashboard" do
    it "It Can See Latest Tweets on Crypto" do
      user_1 = User.create(first_name: "Sam", last_name: "Nayrouz", username: "snayrouz", email: "sam@sam.com", password: "sam123", phone: "+13864511696")

      visit currency_path

      expect(page).to have_content("Bitcoin Pricing Updates from Twitter")
      expect(page).to have_content("Bitcoin News from Twitter")
      expect(page).to have_content("Ethereum Pricing Updates from Twitter")
      expect(page).to have_content("Ethereum News from Twitter")

      within(".twitter") do
        expect(page).to have_css(".twitter-headline")
      end
    end
  end
