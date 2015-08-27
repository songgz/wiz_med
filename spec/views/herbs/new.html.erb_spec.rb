require 'rails_helper'

RSpec.describe "herbs/new", type: :view do
  before(:each) do
    assign(:herb, Herb.new())
  end

  it "renders new herb form" do
    render

    assert_select "form[action=?][method=?]", herbs_path, "post" do
    end
  end
end
