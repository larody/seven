require 'spec_helper'

describe "challenges/index" do
  before(:each) do
    assign(:challenges, [
      stub_model(Challenge,
        :name => "Name",
        :status => 1,
        :quota => 2,
        :reward => "Reward"
      ),
      stub_model(Challenge,
        :name => "Name",
        :status => 1,
        :quota => 2,
        :reward => "Reward"
      )
    ])
  end

  it "renders a list of challenges" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Reward".to_s, :count => 2
  end
end
