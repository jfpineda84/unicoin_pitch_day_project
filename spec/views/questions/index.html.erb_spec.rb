require 'rails_helper'

RSpec.describe "questions/index", type: :view do
  before(:each) do
    assign(:questions, [
      Question.create!(
        :position => 2,
        :name => "Name",
        :text => "Text",
        :form => nil
      ),
      Question.create!(
        :position => 2,
        :name => "Name",
        :text => "Text",
        :form => nil
      )
    ])
  end

  it "renders a list of questions" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Text".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
