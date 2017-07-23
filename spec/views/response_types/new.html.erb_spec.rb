require 'rails_helper'

RSpec.describe "response_types/new", type: :view do
  before(:each) do
    assign(:response_type, ResponseType.new(
      :type => "",
      :data => "MyText"
    ))
  end

  it "renders new response_type form" do
    render

    assert_select "form[action=?][method=?]", response_types_path, "post" do

      assert_select "input[name=?]", "response_type[type]"

      assert_select "textarea[name=?]", "response_type[data]"
    end
  end
end
