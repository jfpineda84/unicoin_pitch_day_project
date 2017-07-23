require 'rails_helper'

RSpec.describe "user_responses/new", type: :view do
  before(:each) do
    assign(:user_response, UserResponse.new(
      :response => "MyText",
      :user => nil,
      :question => nil
    ))
  end

  it "renders new user_response form" do
    render

    assert_select "form[action=?][method=?]", user_responses_path, "post" do

      assert_select "textarea[name=?]", "user_response[response]"

      assert_select "input[name=?]", "user_response[user_id]"

      assert_select "input[name=?]", "user_response[question_id]"
    end
  end
end
