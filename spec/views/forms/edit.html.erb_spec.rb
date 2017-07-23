require 'rails_helper'

RSpec.describe "forms/edit", type: :view do
  before(:each) do
    @form = assign(:form, Form.create!(
      :form => "MyString",
      :tax_return => "MyString"
    ))
  end

  it "renders the edit form form" do
    render

    assert_select "form[action=?][method=?]", form_path(@form), "post" do

      assert_select "input[name=?]", "form[form]"

      assert_select "input[name=?]", "form[tax_return]"
    end
  end
end
