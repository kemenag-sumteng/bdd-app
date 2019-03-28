require 'rails_helper'

RSpec.describe "laporan_penyuluh_agama_katolik/show", type: :view do
  before(:each) do
    @laporan_penyuluh_agama_katolik = assign(:laporan_penyuluh_agama_katolik, LaporanPenyuluhAgamaKatolik.create!(
      :bulan => "Bulan",
      :tahun => "Tahun",
      :tautan => "MyText",
      :nama_penyuluh => "Nama Penyuluh"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Bulan/)
    expect(rendered).to match(/Tahun/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Nama Penyuluh/)
  end
end
