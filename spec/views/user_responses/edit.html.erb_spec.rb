require 'rails_helper'

RSpec.describe "user_responses/edit", type: :view do
  before(:each) do
    @user_response = assign(:user_response, UserResponse.create!(
      :response => "MyText",
      :user => nil,
      :question => nil
    ))
  end

  it "renders the edit user_response form" do
    render

    assert_select "form[action=?][method=?]", user_response_path(@user_response), "post" do

      assert_select "textarea[name=?]", "user_response[response]"

      assert_select "input[name=?]", "user_response[user_id]"

      assert_select "input[name=?]", "user_response[question_id]"
    end
  end
end
