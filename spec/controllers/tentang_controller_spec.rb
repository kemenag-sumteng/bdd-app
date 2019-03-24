require 'rails_helper'

RSpec.describe TentangController, type: :controller do

  describe "GET #visi-misi-kantor" do
    it "returns http success" do
      get :visi-misi-kantor
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #tekat-urakat" do
    it "returns http success" do
      get :tekat-urakat
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #tekat-pendakat" do
    it "returns http success" do
      get :tekat-pendakat
      expect(response).to have_http_status(:success)
    end
  end

end
