require 'rails_helper'

RSpec.describe "herbs/index", type: :view do
  before(:each) do
    assign(:herbs, [
      Herb.create!(),
      Herb.create!()
    ])
  end

  it "renders a list of herbs" do
    render
  end
end
