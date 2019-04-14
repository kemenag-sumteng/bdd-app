require 'rails_helper'

RSpec.describe "laporan_guru_agama_katolik/new", type: :view do
  before(:each) do
    assign(:laporan_guru_agama_katolik, LaporanGuruAgamaKatolik.new(
      :tautan => "MyString",
      :nama_guru => "MyString",
      :judul => "MyString",
      :pemakai => nil
    ))
  end

  it "renders new laporan_guru_agama_katolik form" do
    render

    assert_select "form[action=?][method=?]", laporan_guru_agama_katolik_index_path, "post" do

      assert_select "input[name=?]", "laporan_guru_agama_katolik[tautan]"

      assert_select "input[name=?]", "laporan_guru_agama_katolik[nama_guru]"

      assert_select "input[name=?]", "laporan_guru_agama_katolik[judul]"

      assert_select "input[name=?]", "laporan_guru_agama_katolik[pemakai_id]"
    end
  end
end
