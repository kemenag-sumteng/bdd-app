require 'rails_helper'

RSpec.describe "LaporanKinerjaPegawaiBimkatSumteng", type: :request do
  describe "GET /laporan_kinerja_pegawai_bimkat_sumteng" do
    it "works! (now write some real specs)" do
      get laporan_kinerja_pegawai_bimkat_sumteng_index_path
      expect(response).to have_http_status(200)
    end
  end
end
