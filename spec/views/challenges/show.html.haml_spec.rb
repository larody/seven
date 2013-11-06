require 'spec_helper'

describe "challenges/show" do
  before(:each) do
    @challenge = assign(:challenge, stub_model(Challenge,
      :name => "Name",
      :status => 1,
      :quota => 2,
      :reward => "Reward"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Reward/)
  end
end
