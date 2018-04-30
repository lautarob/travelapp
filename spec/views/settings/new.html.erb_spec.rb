require 'rails_helper'

RSpec.describe "settings/new", type: :view do
  before(:each) do
    assign(:setting, Setting.new(
      :name => 1,
      :value => "MyString",
      :type => ""
    ))
  end

  it "renders new setting form" do
    render

    assert_select "form[action=?][method=?]", settings_path, "post" do

      assert_select "input[name=?]", "setting[name]"

      assert_select "input[name=?]", "setting[value]"

      assert_select "input[name=?]", "setting[type]"
    end
  end
end
