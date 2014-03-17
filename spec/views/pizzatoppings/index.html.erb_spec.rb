require 'spec_helper'

describe "pizzatoppings/index" do
  before(:each) do
    assign(:pizzatoppings, [
      stub_model(Pizzatopping,
        :topping_id => 1,
        :pizza_id => 2
      ),
      stub_model(Pizzatopping,
        :topping_id => 1,
        :pizza_id => 2
      )
    ])
  end

  it "renders a list of pizzatoppings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
