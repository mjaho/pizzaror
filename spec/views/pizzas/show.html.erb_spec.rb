require 'spec_helper'

describe "pizzas/show" do
  before(:each) do
    @pizza = assign(:pizza, stub_model(Pizza,
      :name => "Name",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
