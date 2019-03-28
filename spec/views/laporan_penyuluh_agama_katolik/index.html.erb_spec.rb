require 'rails_helper'

RSpec.describe "laporan_penyuluh_agama_katolik/index", type: :view do
  before(:each) do
    assign(:laporan_penyuluh_agama_katolik, [
      LaporanPenyuluhAgamaKatolik.create!(
        :bulan => "Bulan",
        :tahun => "Tahun",
        :tautan => "MyText",
        :nama_penyuluh => "Nama Penyuluh"
      ),
      LaporanPenyuluhAgamaKatolik.create!(
        :bulan => "Bulan",
        :tahun => "Tahun",
        :tautan => "MyText",
        :nama_penyuluh => "Nama Penyuluh"
      )
    ])
  end

  it "renders a list of laporan_penyuluh_agama_katolik" do
    render
    assert_select "tr>td", :text => "Bulan".to_s, :count => 2
    assert_select "tr>td", :text => "Tahun".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Nama Penyuluh".to_s, :count => 2
  end
end
