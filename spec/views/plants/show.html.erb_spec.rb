require "rails_helper"

RSpec.describe "plants/show", type: :view do
  before(:each) do
    @plant = assign(:plant, Plant.create!(
      name: "Name",
      scientific_name: "Scientific Name",
      average_height: 2.5,
      life_cycle: "Life Cycle",
      is_consumable: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Scientific Name/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/Life Cycle/)
    expect(rendered).to match(/false/)
  end
end
