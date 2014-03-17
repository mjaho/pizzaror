require 'spec_helper'

describe "pizzas/edit" do
  before(:each) do
    @pizza = assign(:pizza, stub_model(Pizza,
      :name => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit pizza form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pizza_path(@pizza), "post" do
      assert_select "input#pizza_name[name=?]", "pizza[name]"
      assert_select "input#pizza_user_id[name=?]", "pizza[user_id]"
    end
  end
end
