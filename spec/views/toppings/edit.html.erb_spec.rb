require 'spec_helper'

describe "toppings/edit" do
  before(:each) do
    @topping = assign(:topping, stub_model(Topping,
      :name => "MyString",
      :amount => "",
      :unit => "MyString"
    ))
  end

  it "renders the edit topping form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", topping_path(@topping), "post" do
      assert_select "input#topping_name[name=?]", "topping[name]"
      assert_select "input#topping_amount[name=?]", "topping[amount]"
      assert_select "input#topping_unit[name=?]", "topping[unit]"
    end
  end
end
