require 'rails_helper'

describe "Visitor Can Not View Dashboard" do
  it "visits dashboard path and fails" do
    visit 'dashboard_index_path'

    expect(response).to have_http_status(404)
  end
end
