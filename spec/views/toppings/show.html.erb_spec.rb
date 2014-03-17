require 'spec_helper'

describe "toppings/show" do
  before(:each) do
    @topping = assign(:topping, stub_model(Topping,
      :name => "Name",
      :amount => "",
      :unit => "Unit"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(//)
    rendered.should match(/Unit/)
  end
end
