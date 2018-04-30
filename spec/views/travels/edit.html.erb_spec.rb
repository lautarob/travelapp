require 'rails_helper'

RSpec.describe "travels/edit", type: :view do
  before(:each) do
    @travel = assign(:travel, Travel.create!(
      :city => "MyString",
      :user => nil
    ))
  end

  it "renders the edit travel form" do
    render

    assert_select "form[action=?][method=?]", travel_path(@travel), "post" do

      assert_select "input[name=?]", "travel[city]"

      assert_select "input[name=?]", "travel[user_id]"
    end
  end
end
