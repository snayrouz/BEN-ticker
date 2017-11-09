require 'rails_helper'

describe "Twilio Confirmation Sender" do
  it "it sends a confirmation code to the user" do
    user = User.create(first_name: "Sam", last_name: "Nayrouz", username: "snayrouz", email: "sam@sam.com", password: "sam123", phone: "+13864511696")

    cs = ConfirmationSender.send_confirmation(user)

    expect(user.verification_code).to_not be_nil
  end
end
