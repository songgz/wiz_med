require 'rails_helper'

RSpec.describe "herbs/show", type: :view do
  before(:each) do
    @herb = assign(:herb, Herb.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
