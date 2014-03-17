require 'spec_helper'

describe "toppings/new" do
  before(:each) do
    assign(:topping, stub_model(Topping,
      :name => "MyString",
      :amount => "",
      :unit => "MyString"
    ).as_new_record)
  end

  it "renders new topping form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", toppings_path, "post" do
      assert_select "input#topping_name[name=?]", "topping[name]"
      assert_select "input#topping_amount[name=?]", "topping[amount]"
      assert_select "input#topping_unit[name=?]", "topping[unit]"
    end
  end
end
