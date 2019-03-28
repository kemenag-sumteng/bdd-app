require 'rails_helper'

RSpec.describe "laporan_kinerja_pegawai_bimkat_sumteng/new", type: :view do
  before(:each) do
    assign(:laporan_kinerja_pegawai_bimkat_sumteng, LaporanKinerjaPegawaiBimkatSumteng.new(
      :bulan => "MyString",
      :tahun => "MyString",
      :tautan => "MyString"
    ))
  end

  it "renders new laporan_kinerja_pegawai_bimkat_sumteng form" do
    render

    assert_select "form[action=?][method=?]", laporan_kinerja_pegawai_bimkat_sumteng_index_path, "post" do

      assert_select "input[name=?]", "laporan_kinerja_pegawai_bimkat_sumteng[bulan]"

      assert_select "input[name=?]", "laporan_kinerja_pegawai_bimkat_sumteng[tahun]"

      assert_select "input[name=?]", "laporan_kinerja_pegawai_bimkat_sumteng[tautan]"
    end
  end
end
