require 'rails_helper'

RSpec.describe "forms/index", type: :view do
  before(:each) do
    assign(:forms, [
      Form.create!(
        :form => "Form",
        :tax_return => "Tax Return"
      ),
      Form.create!(
        :form => "Form",
        :tax_return => "Tax Return"
      )
    ])
  end

  it "renders a list of forms" do
    render
    assert_select "tr>td", :text => "Form".to_s, :count => 2
    assert_select "tr>td", :text => "Tax Return".to_s, :count => 2
  end
end
