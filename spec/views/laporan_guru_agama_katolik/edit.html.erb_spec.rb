require 'rails_helper'

RSpec.describe "laporan_guru_agama_katolik/edit", type: :view do
  before(:each) do
    @laporan_guru_agama_katolik = assign(:laporan_guru_agama_katolik, LaporanGuruAgamaKatolik.create!(
      :tautan => "MyString",
      :nama_guru => "MyString",
      :judul => "MyString",
      :pemakai => nil
    ))
  end

  it "renders the edit laporan_guru_agama_katolik form" do
    render

    assert_select "form[action=?][method=?]", laporan_guru_agama_katolik_path(@laporan_guru_agama_katolik), "post" do

      assert_select "input[name=?]", "laporan_guru_agama_katolik[tautan]"

      assert_select "input[name=?]", "laporan_guru_agama_katolik[nama_guru]"

      assert_select "input[name=?]", "laporan_guru_agama_katolik[judul]"

      assert_select "input[name=?]", "laporan_guru_agama_katolik[pemakai_id]"
    end
  end
end
