require 'rails_helper'

RSpec.describe "laporan_kinerja_pegawai_bimkat_sumteng/show", type: :view do
  before(:each) do
    @laporan_kinerja_pegawai_bimkat_sumteng = assign(:laporan_kinerja_pegawai_bimkat_sumteng, LaporanKinerjaPegawaiBimkatSumteng.create!(
      :bulan => "Bulan",
      :tahun => "Tahun",
      :tautan => "Tautan"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Bulan/)
    expect(rendered).to match(/Tahun/)
    expect(rendered).to match(/Tautan/)
  end
end
