require 'rails_helper'

feature "User Can Reset Password" do
  it "resets their password" do
    user = User.create(first_name: "Sam", last_name: "Nayrouz", username: "snayrouz", email: "sam@sam.com", password: "sam123", phone: "+13864511696", verification_code: "123456")
    allow(CodeGenerator).to receive(:generate).and_return("123456")
    allow(MessageSender).to receive(:send_code).and_return(true)
    visit "/login"
    click_on "Forgot My Password"
    expect(current_path).to eq("/password-reset")

    fill_in 'Email', with: "josh@example.com"
    click_on "Get Confirmation Code"

    expect(current_path).to eq("/password-confirmation")

    expect(page).to have_content "Verification Code"
    expect(page).to have_content "New Password"

    fill_in "Verification Code", with: "123456"
    fill_in 'New Password', with: "password"
    fill_in 'Confirm Password', with: "password"
    click_on "Submit"

    expect(current_path).to eq("/dashboard")
    expect(page).to have_content "Welcome back, #{user.first_name}!"
    click_on "Logout"
    click_on "Login"

    fill_in 'Email', with: "josh@example.com"
    fill_in 'Password', with: 'password'

    expect(current_path).to eq("/dashboard")
  end
end
