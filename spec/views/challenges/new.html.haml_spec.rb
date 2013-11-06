require 'spec_helper'

describe "challenges/new" do
  before(:each) do
    assign(:challenge, stub_model(Challenge,
      :name => "MyString",
      :status => 1,
      :quota => 1,
      :reward => "MyString"
    ).as_new_record)
  end

  it "renders new challenge form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", challenges_path, "post" do
      assert_select "input#challenge_name[name=?]", "challenge[name]"
      assert_select "input#challenge_status[name=?]", "challenge[status]"
      assert_select "input#challenge_quota[name=?]", "challenge[quota]"
      assert_select "input#challenge_reward[name=?]", "challenge[reward]"
    end
  end
end
