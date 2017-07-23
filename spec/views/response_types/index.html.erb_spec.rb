require 'rails_helper'

RSpec.describe "response_types/index", type: :view do
  before(:each) do
    assign(:response_types, [
      ResponseType.create!(
        :type => "Type",
        :data => "MyText"
      ),
      ResponseType.create!(
        :type => "Type",
        :data => "MyText"
      )
    ])
  end

  it "renders a list of response_types" do
    render
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
