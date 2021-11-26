require "rails_helper"

RSpec.describe "Abouts", type: :request do
  describe "GET /index" do
    it "renders a succesful response" do
      get about_url
      expect(response).to be_successful
    end
  end
end
