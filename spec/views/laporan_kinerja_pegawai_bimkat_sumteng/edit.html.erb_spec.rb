require 'rails_helper'

RSpec.describe "laporan_kinerja_pegawai_bimkat_sumteng/edit", type: :view do
  before(:each) do
    @laporan_kinerja_pegawai_bimkat_sumteng = assign(:laporan_kinerja_pegawai_bimkat_sumteng, LaporanKinerjaPegawaiBimkatSumteng.create!(
      :bulan => "MyString",
      :tahun => "MyString",
      :tautan => "MyString"
    ))
  end

  it "renders the edit laporan_kinerja_pegawai_bimkat_sumteng form" do
    render

    assert_select "form[action=?][method=?]", laporan_kinerja_pegawai_bimkat_sumteng_path(@laporan_kinerja_pegawai_bimkat_sumteng), "post" do

      assert_select "input[name=?]", "laporan_kinerja_pegawai_bimkat_sumteng[bulan]"

      assert_select "input[name=?]", "laporan_kinerja_pegawai_bimkat_sumteng[tahun]"

      assert_select "input[name=?]", "laporan_kinerja_pegawai_bimkat_sumteng[tautan]"
    end
  end
end
