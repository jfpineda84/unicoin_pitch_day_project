require 'rails_helper'

RSpec.describe "response_types/show", type: :view do
  before(:each) do
    @response_type = assign(:response_type, ResponseType.create!(
      :type => "Type",
      :data => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/MyText/)
  end
end
