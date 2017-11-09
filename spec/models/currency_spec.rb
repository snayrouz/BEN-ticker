require 'rails_helper'

RSpec.describe Currency, type: :model do
  context "invalid attributes" do
    it "is invalid without a date" do
      c = Currency.create(currency_type: "bitcoin", value: 4245.89)
      expect(c).to be_invalid
    end


    it "is invalid without a currency_type" do
      c = Currency.create(value: 4245.89, date: "2017-09-10")
      expect(c).to be_invalid
    end

    it "is invalid without a value" do
      c = Currency.create(currency_type: "bitcoin", date: "2017-09-10")
      expect(c).to be_invalid
    end
  end
end
