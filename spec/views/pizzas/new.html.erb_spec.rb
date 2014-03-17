require 'spec_helper'

describe "pizzas/new" do
  before(:each) do
    assign(:pizza, stub_model(Pizza,
      :name => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new pizza form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pizzas_path, "post" do
      assert_select "input#pizza_name[name=?]", "pizza[name]"
      assert_select "input#pizza_user_id[name=?]", "pizza[user_id]"
    end
  end
end
