require 'rails_helper'

RSpec.describe "laporan_penyuluh_agama_katolik/edit", type: :view do
  before(:each) do
    @laporan_penyuluh_agama_katolik = assign(:laporan_penyuluh_agama_katolik, LaporanPenyuluhAgamaKatolik.create!(
      :bulan => "MyString",
      :tahun => "MyString",
      :tautan => "MyText",
      :nama_penyuluh => "MyString"
    ))
  end

  it "renders the edit laporan_penyuluh_agama_katolik form" do
    render

    assert_select "form[action=?][method=?]", laporan_penyuluh_agama_katolik_path(@laporan_penyuluh_agama_katolik), "post" do

      assert_select "input[name=?]", "laporan_penyuluh_agama_katolik[bulan]"

      assert_select "input[name=?]", "laporan_penyuluh_agama_katolik[tahun]"

      assert_select "textarea[name=?]", "laporan_penyuluh_agama_katolik[tautan]"

      assert_select "input[name=?]", "laporan_penyuluh_agama_katolik[nama_penyuluh]"
    end
  end
end
