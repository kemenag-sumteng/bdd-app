require 'rails_helper'

RSpec.describe "informasi_berita_terkini/new", type: :view do
  before(:each) do
    assign(:informasi_berita_terkini, InformasiBeritaTerkini.new(
      :judul => "MyString",
      :isi => "MyText"
    ))
  end

  it "renders new informasi_berita_terkini form" do
    render

    assert_select "form[action=?][method=?]", informasi_berita_terkini_index_path, "post" do

      assert_select "input[name=?]", "informasi_berita_terkini[judul]"

      assert_select "textarea[name=?]", "informasi_berita_terkini[isi]"
    end
  end
end
