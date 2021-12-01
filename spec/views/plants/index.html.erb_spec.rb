require "rails_helper"

RSpec.describe "plants/index", type: :view do
  before(:each) do
    @marijuana_sativa = FactoryGirl.create(:plant)
    @sunflower = FactoryGirl.create(:second_plant)
    assign(:plants, [@marijuana_sativa, @sunflower])
  end

  it "renders a list of the plants" do
    render
    expect(rendered).to have_text(@marijuana_sativa.name)
    expect(rendered).to have_text(@marijuana_sativa.scientific_name)
    expect(rendered).to have_text(@marijuana_sativa.average_height)
    expect(rendered).to have_text(@marijuana_sativa.life_cycle)
    expect(rendered).to have_text(@marijuana_sativa.is_consumable)

    expect(rendered).to have_text(@sunflower.name)
    expect(rendered).to have_text(@sunflower.scientific_name)
    expect(rendered).to have_text(@sunflower.average_height)
    expect(rendered).to have_text(@sunflower.life_cycle)
    expect(rendered).to have_text(@sunflower.is_consumable)
  end
end
