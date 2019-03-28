require 'rails_helper'

RSpec.describe "informasi_pengumuman/new", type: :view do
  before(:each) do
    assign(:informasi_pengumuman, InformasiPengumuman.new(
      :judul => "MyString",
      :isi => "MyText"
    ))
  end

  it "renders new informasi_pengumuman form" do
    render

    assert_select "form[action=?][method=?]", informasi_pengumuman_index_path, "post" do

      assert_select "input[name=?]", "informasi_pengumuman[judul]"

      assert_select "textarea[name=?]", "informasi_pengumuman[isi]"
    end
  end
end
