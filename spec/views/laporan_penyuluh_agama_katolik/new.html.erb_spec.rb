require 'rails_helper'

RSpec.describe "laporan_penyuluh_agama_katolik/new", type: :view do
  before(:each) do
    assign(:laporan_penyuluh_agama_katolik, LaporanPenyuluhAgamaKatolik.new(
      :bulan => "MyString",
      :tahun => "MyString",
      :tautan => "MyText",
      :nama_penyuluh => "MyString"
    ))
  end

  it "renders new laporan_penyuluh_agama_katolik form" do
    render

    assert_select "form[action=?][method=?]", laporan_penyuluh_agama_katolik_index_path, "post" do

      assert_select "input[name=?]", "laporan_penyuluh_agama_katolik[bulan]"

      assert_select "input[name=?]", "laporan_penyuluh_agama_katolik[tahun]"

      assert_select "textarea[name=?]", "laporan_penyuluh_agama_katolik[tautan]"

      assert_select "input[name=?]", "laporan_penyuluh_agama_katolik[nama_penyuluh]"
    end
  end
end
