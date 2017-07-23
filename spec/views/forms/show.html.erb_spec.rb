require 'rails_helper'

RSpec.describe "forms/show", type: :view do
  before(:each) do
    @form = assign(:form, Form.create!(
      :form => "Form",
      :tax_return => "Tax Return"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Form/)
    expect(rendered).to match(/Tax Return/)
  end
end
