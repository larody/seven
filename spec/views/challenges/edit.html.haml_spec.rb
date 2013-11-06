require 'spec_helper'

describe "challenges/edit" do
  before(:each) do
    @challenge = assign(:challenge, stub_model(Challenge,
      :name => "MyString",
      :status => 1,
      :quota => 1,
      :reward => "MyString"
    ))
  end

  it "renders the edit challenge form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", challenge_path(@challenge), "post" do
      assert_select "input#challenge_name[name=?]", "challenge[name]"
      assert_select "input#challenge_status[name=?]", "challenge[status]"
      assert_select "input#challenge_quota[name=?]", "challenge[quota]"
      assert_select "input#challenge_reward[name=?]", "challenge[reward]"
    end
  end
end
