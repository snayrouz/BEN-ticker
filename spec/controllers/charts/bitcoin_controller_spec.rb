require 'rails_helper'

describe "class methods" do
  context "#average_yearly_open" do
    it "calculates average yearly open" do
      expect(response).to have_http_status(200)
    end
  end

  context "#average_monthly_open" do
    it "calculates average monthly open" do
      expect(response).to have_http_status(200)
    end
  end

  context "#average_yearly_high" do
    it "calculates average yearly high" do
      expect(response).to have_http_status(200)
    end
  end

  context "#average_monthly_high" do
    it "calculates average monthly high" do
      expect(response).to have_http_status(200)
    end
  end

  context "#average_yearly_low" do
    it "calculates average yearly low" do
      expect(response).to have_http_status(200)
    end
  end

  context "#average_monthly_low" do
    it "calculates average yearly low" do
      expect(response).to have_http_status(200)
    end
  end

  context "#average_yearly_close" do
    it "calculates average yearly close" do
      expect(response).to have_http_status(200)
    end
  end

  context "#average_monthly_close" do
    it "calculates average monthly close" do
      expect(response).to have_http_status(200)
    end
  end
end
