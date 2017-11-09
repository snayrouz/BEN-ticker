require 'rails_helper'

RSpec.describe User, type: :model do
  context "invalid attributes" do
    it "is invalid without a username" do
      user = User.create(first_name: "Sam", last_name: "Nayrouz", email: "sam@sam.com", password: "sam123", phone: "+13333333333")
      expect(user).to be_invalid
    end

    it "is invalid without a phone" do
      user = User.create(first_name: "Richard", last_name: "Dixon", username: "rdixon", email: "richard@richard.com", password: "richard123")
      expect(user).to be_invalid

    end

    it "invalid without an email" do
      user = User.create(first_name: "Richard", last_name: "Dixon", username: "rdixon", password: "richard123", phone: "+13033333333")
      expect(user).to be_invalid

    end

    it "is invalid without a unique email" do
      user_1 = User.create(first_name: "Richard", last_name: "Dixon", username: "rdixon", email: "richard@richard.com", password: "richard123", phone: "+13033333333")
      user_2 = User.create(first_name: "Blah", last_name: "McBlah", username: "blah", email: "richard@richard.com", password: "bla123", phone: "+13033356333")
      expect(user_2).to be_invalid
    end

    it "is invalid without a password" do
      user = User.create(first_name: "Richard", last_name: "Dixon", username: "rdixon", email: "richard@richard.com", phone: "+13033333333")
      expect(user).to be_invalid
    end
  end
end
