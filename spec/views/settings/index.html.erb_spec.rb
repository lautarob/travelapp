require 'rails_helper'

RSpec.describe "settings/index", type: :view do
  before(:each) do
    assign(:settings, [
      Setting.create!(
        :name => 2,
        :value => "Value",
        :type => "Type"
      ),
      Setting.create!(
        :name => 2,
        :value => "Value",
        :type => "Type"
      )
    ])
  end

  it "renders a list of settings" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Value".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
