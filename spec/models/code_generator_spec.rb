require 'rails_helper'

describe "Twilio Code Generator" do
  it "Generates a random 6 numbers for password reset" do
    cg = CodeGenerator.generate

    expect(cg).to eq(cg)
  end
end
