require 'spec_helper'

describe "favoritepizzas/show" do
  before(:each) do
    @favoritepizza = assign(:favoritepizza, stub_model(Favoritepizza,
      :user_id => 1,
      :pizza_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
