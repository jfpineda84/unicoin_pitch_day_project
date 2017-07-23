require 'rails_helper'

RSpec.describe "questions/edit", type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :position => 1,
      :name => "MyString",
      :text => "MyString",
      :form => nil
    ))
  end

  it "renders the edit question form" do
    render

    assert_select "form[action=?][method=?]", question_path(@question), "post" do

      assert_select "input[name=?]", "question[position]"

      assert_select "input[name=?]", "question[name]"

      assert_select "input[name=?]", "question[text]"

      assert_select "input[name=?]", "question[form_id]"
    end
  end
end
