require "rails_helper"

RSpec.describe "plants/index", type: :view do
  before(:each) do
    sunflower = FactoryGirl.create(:sunflower)
    marijuana_sativa = FactoryGirl.create(:marijuana_sativa)
    assign(:plants, [marijuana_sativa, sunflower])
  end

  it "renders a list of plants" do
    render
    expect(rendered).to match(/Marijuana/)
    expect(rendered).to match(/Cannabis sativa/)
    expect(rendered).to match(/180.0/)
    expect(rendered).to match(/semestral/)
    expect(rendered).to match(/true/)

    expect(rendered).to match(/Common sunflower/)
    expect(rendered).to match(/Helianthus annuus/)
    expect(rendered).to match(/243.84/)
    expect(rendered).to match(/annual/)
    expect(rendered).to match(/false/)
  end
end
