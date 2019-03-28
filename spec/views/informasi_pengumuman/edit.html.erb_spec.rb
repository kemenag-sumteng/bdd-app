require 'rails_helper'

RSpec.describe "informasi_pengumuman/edit", type: :view do
  before(:each) do
    @informasi_pengumuman = assign(:informasi_pengumuman, InformasiPengumuman.create!(
      :judul => "MyString",
      :isi => "MyText"
    ))
  end

  it "renders the edit informasi_pengumuman form" do
    render

    assert_select "form[action=?][method=?]", informasi_pengumuman_path(@informasi_pengumuman), "post" do

      assert_select "input[name=?]", "informasi_pengumuman[judul]"

      assert_select "textarea[name=?]", "informasi_pengumuman[isi]"
    end
  end
end
