require 'rails_helper'

RSpec.describe "settings/show", type: :view do
  before(:each) do
    @setting = assign(:setting, Setting.create!(
      :name => 2,
      :value => "Value",
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Value/)
    expect(rendered).to match(/Type/)
  end
end
