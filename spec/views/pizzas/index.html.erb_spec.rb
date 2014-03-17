require 'spec_helper'

describe "pizzas/index" do
  before(:each) do
    assign(:pizzas, [
      stub_model(Pizza,
        :name => "Name",
        :user_id => 1
      ),
      stub_model(Pizza,
        :name => "Name",
        :user_id => 1
      )
    ])
  end

  it "renders a list of pizzas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
