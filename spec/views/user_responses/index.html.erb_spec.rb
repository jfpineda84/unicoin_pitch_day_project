require 'rails_helper'

RSpec.describe "user_responses/index", type: :view do
  before(:each) do
    assign(:user_responses, [
      UserResponse.create!(
        :response => "MyText",
        :user => nil,
        :question => nil
      ),
      UserResponse.create!(
        :response => "MyText",
        :user => nil,
        :question => nil
      )
    ])
  end

  it "renders a list of user_responses" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
