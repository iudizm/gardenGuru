require "rails_helper"

RSpec.describe "Homes", type: :request do
  describe "GET /index" do
    it "renders successful response" do
      get home_url
      expect(response).to be_successful
    end
  end
end
