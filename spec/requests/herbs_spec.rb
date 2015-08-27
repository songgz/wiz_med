require 'rails_helper'

RSpec.describe "Herbs", type: :request do
  describe "GET /herbs" do
    it "works! (now write some real specs)" do
      get herbs_path
      expect(response).to have_http_status(200)
    end
  end
end
