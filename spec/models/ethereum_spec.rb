require 'rails_helper'

RSpec.describe Ethereum, type: :model do
  context "invalid attributes" do
    it "is invalid without a date" do
      eth = Ethereum.create(open: 0.29857e3, high: 0.30484e3, low: 0.29077e3, close: 0.29466e3)
      expect(eth).to be_invalid
    end

    it "is invalid without an open" do
      eth = Ethereum.create(date: "Nov 07, 2017", high: 0.30484e3, low: 0.29077e3, close: 0.29466e3)
      expect(eth).to be_invalid
    end

    it "is invalid without a high" do
      eth = Ethereum.create(date: "Nov 07, 2017", open: 0.29857e3, low: 0.29077e3, close: 0.29466e3)
      expect(eth).to be_invalid
    end

    it "is invalid without a low" do
      eth = Ethereum.create(date: "Nov 07, 2017", open: 0.29857e3, high: 0.30484e3, close: 0.29466e3)
      expect(eth).to be_invalid
    end

    it "is invalid without a close" do
      eth = Ethereum.create(date: "Nov 07, 2017", open: 0.29857e3, high: 0.30484e3, low: 0.29077e3)
      expect(eth).to be_invalid
    end
  end
end
