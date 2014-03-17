require 'spec_helper'

describe "toppings/index" do
  before(:each) do
    assign(:toppings, [
      stub_model(Topping,
        :name => "Name",
        :amount => "",
        :unit => "Unit"
      ),
      stub_model(Topping,
        :name => "Name",
        :amount => "",
        :unit => "Unit"
      )
    ])
  end

  it "renders a list of toppings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
  end
end
