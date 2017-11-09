require 'rails_helper'

RSpec.describe Bitcoin, type: :model do
  context "invalid attributes" do
    it "is invalid without a date" do
      btc = Bitcoin.create(open: 0.70231e4, high: 0.725332e4, low: 0.70231e4, close: 0.714438e4)
      expect(btc).to be_invalid
    end

    it "is invalid without an open" do
      btc = Bitcoin.create(date: "Nov 07, 2017", high: 0.725332e4, low: 0.70231e4, close: 0.714438e4)
      expect(btc).to be_invalid
    end

    it "is invalid without a high" do
      btc = Bitcoin.create(date: "Nov 07, 2017", open: 0.70231e4, low: 0.70231e4, close: 0.714438e4)
      expect(btc).to be_invalid
    end

    it "is invalid without a low" do
      btc = Bitcoin.create(date: "Nov 07, 2017", open: 0.70231e4, high: 0.725332e4, close: 0.714438e4)
      expect(btc).to be_invalid
    end

    it "is invalid without a close" do
      btc = Bitcoin.create(date: "Nov 07, 2017", open: 0.70231e4, high: 0.725332e4, low: 0.70231e4)
      expect(btc).to be_invalid
    end
  end

  context "valid attributes" do
    it "is valid with all attributes" do
      btc = Bitcoin.create(date: "Nov 07, 2017",open: 0.70231e4, high: 0.725332e4, low: 0.70231e4, close: 0.714438e4)
      expect(btc).to be_valid
    end
  end
end
