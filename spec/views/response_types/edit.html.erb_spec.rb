require 'rails_helper'

RSpec.describe "response_types/edit", type: :view do
  before(:each) do
    @response_type = assign(:response_type, ResponseType.create!(
      :type => "",
      :data => "MyText"
    ))
  end

  it "renders the edit response_type form" do
    render

    assert_select "form[action=?][method=?]", response_type_path(@response_type), "post" do

      assert_select "input[name=?]", "response_type[type]"

      assert_select "textarea[name=?]", "response_type[data]"
    end
  end
end
