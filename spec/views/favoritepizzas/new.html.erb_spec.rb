require 'spec_helper'

describe "favoritepizzas/new" do
  before(:each) do
    assign(:favoritepizza, stub_model(Favoritepizza,
      :user_id => 1,
      :pizza_id => 1
    ).as_new_record)
  end

  it "renders new favoritepizza form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", favoritepizzas_path, "post" do
      assert_select "input#favoritepizza_user_id[name=?]", "favoritepizza[user_id]"
      assert_select "input#favoritepizza_pizza_id[name=?]", "favoritepizza[pizza_id]"
    end
  end
end
