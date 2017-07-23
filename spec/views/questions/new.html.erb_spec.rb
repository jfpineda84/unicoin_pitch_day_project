require 'rails_helper'

RSpec.describe "questions/new", type: :view do
  before(:each) do
    assign(:question, Question.new(
      :position => 1,
      :name => "MyString",
      :text => "MyString",
      :form => nil
    ))
  end

  it "renders new question form" do
    render

    assert_select "form[action=?][method=?]", questions_path, "post" do

      assert_select "input[name=?]", "question[position]"

      assert_select "input[name=?]", "question[name]"

      assert_select "input[name=?]", "question[text]"

      assert_select "input[name=?]", "question[form_id]"
    end
  end
end
