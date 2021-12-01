require "rails_helper"

RSpec.describe "plants/show", type: :view do
  before(:each) do
    @plant = assign(:plant, FactoryGirl.create(:plant))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to have_text(@plant.name)
    expect(rendered).to have_text(@plant.scientific_name)
    expect(rendered).to have_text(@plant.average_height)
    expect(rendered).to have_text(@plant.life_cycle)
    expect(rendered).to have_text(@plant.is_consumable)
  end
end
