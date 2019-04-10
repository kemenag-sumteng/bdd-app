require 'rails_helper'

RSpec.describe "Fungsi", type: :request do
  describe "GET /fungsi" do
    it "works! (now write some real specs)" do
      get fungsi_index_path
      expect(response).to have_http_status(200)
    end
  end
end
