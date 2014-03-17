require 'spec_helper'

describe "pizzatoppings/edit" do
  before(:each) do
    @pizzatopping = assign(:pizzatopping, stub_model(Pizzatopping,
      :topping_id => 1,
      :pizza_id => 1
    ))
  end

  it "renders the edit pizzatopping form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pizzatopping_path(@pizzatopping), "post" do
      assert_select "input#pizzatopping_topping_id[name=?]", "pizzatopping[topping_id]"
      assert_select "input#pizzatopping_pizza_id[name=?]", "pizzatopping[pizza_id]"
    end
  end
end
