require "rails_helper"

RSpec.describe "plants/new", type: :view do
  before(:each) do
    assign(:plant, FactoryGirl.build(:plant))
  end

  it "renders new plant form" do
    render

    assert_select "form[action=?][method=?]", plants_path, "post" do
      assert_select "input[name=?]", "plant[name]"

      assert_select "input[name=?]", "plant[scientific_name]"

      assert_select "input[name=?]", "plant[average_height]"

      assert_select "input[name=?]", "plant[life_cycle]"

      assert_select "input[name=?]", "plant[is_consumable]"
    end
  end
end
