require 'rails_helper'

RSpec.describe TentangController, type: :controller do

  describe "GET #visi-misi-kantor" do
    it "returns http success" do
      get :visi_misi_kantor
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #tekat-urakat" do
    it "returns http success" do
      get :tekat_urakat
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #tekat-pendakat" do
    it "returns http success" do
      get :tekat_pendakat
      expect(response).to have_http_status(:success)
    end
  end

end
