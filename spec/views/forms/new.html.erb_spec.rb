require 'rails_helper'

RSpec.describe "forms/new", type: :view do
  before(:each) do
    assign(:form, Form.new(
      :form => "MyString",
      :tax_return => "MyString"
    ))
  end

  it "renders new form form" do
    render

    assert_select "form[action=?][method=?]", forms_path, "post" do

      assert_select "input[name=?]", "form[form]"

      assert_select "input[name=?]", "form[tax_return]"
    end
  end
end
