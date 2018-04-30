require 'rails_helper'

RSpec.describe "travels/index", type: :view do
  before(:each) do
    assign(:travels, [
      Travel.create!(
        :city => "City",
        :user => nil
      ),
      Travel.create!(
        :city => "City",
        :user => nil
      )
    ])
  end

  it "renders a list of travels" do
    render
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
