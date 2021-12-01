require "rails_helper"

RSpec.describe "plants/edit", type: :view do
  before(:each) do
    @plant = assign(:plant, FactoryGirl.create(:plant))
  end

  it "renders the edit plant form" do
    render

    assert_select "form[action=?][method=?]", plant_path(@plant), "post" do
      assert_select "input[name=?]", "plant[name]"

      assert_select "input[name=?]", "plant[scientific_name]"

      assert_select "input[name=?]", "plant[average_height]"

      assert_select "input[name=?]", "plant[life_cycle]"

      assert_select "input[name=?]", "plant[is_consumable]"
    end
  end
end
