require 'rails_helper'

RSpec.describe "herbs/edit", type: :view do
  before(:each) do
    @herb = assign(:herb, Herb.create!())
  end

  it "renders the edit herb form" do
    render

    assert_select "form[action=?][method=?]", herb_path(@herb), "post" do
    end
  end
end
