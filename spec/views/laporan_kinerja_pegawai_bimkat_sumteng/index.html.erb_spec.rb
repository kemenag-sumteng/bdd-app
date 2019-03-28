require 'rails_helper'

RSpec.describe "laporan_kinerja_pegawai_bimkat_sumteng/index", type: :view do
  before(:each) do
    assign(:laporan_kinerja_pegawai_bimkat_sumteng, [
      LaporanKinerjaPegawaiBimkatSumteng.create!(
        :bulan => "Bulan",
        :tahun => "Tahun",
        :tautan => "Tautan"
      ),
      LaporanKinerjaPegawaiBimkatSumteng.create!(
        :bulan => "Bulan",
        :tahun => "Tahun",
        :tautan => "Tautan"
      )
    ])
  end

  it "renders a list of laporan_kinerja_pegawai_bimkat_sumteng" do
    render
    assert_select "tr>td", :text => "Bulan".to_s, :count => 2
    assert_select "tr>td", :text => "Tahun".to_s, :count => 2
    assert_select "tr>td", :text => "Tautan".to_s, :count => 2
  end
end
