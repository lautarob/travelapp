require 'rails_helper'

RSpec.describe "travels/show", type: :view do
  before(:each) do
    @travel = assign(:travel, Travel.create!(
      :city => "City",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/City/)
    expect(rendered).to match(//)
  end
end
