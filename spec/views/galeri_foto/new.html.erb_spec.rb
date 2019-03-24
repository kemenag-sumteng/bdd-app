require 'rails_helper'

RSpec.describe "galeri_foto/new", type: :view do
  before(:each) do
    assign(:galeri_foto, GaleriFoto.new(
      :judul => "MyString",
      :keterangan => "MyText",
      :berkas => "MyString"
    ))
  end

  it "renders new galeri_foto form" do
    render

    assert_select "form[action=?][method=?]", galeri_foto_index_path, "post" do

      assert_select "input[name=?]", "galeri_foto[judul]"

      assert_select "textarea[name=?]", "galeri_foto[keterangan]"

      assert_select "input[name=?]", "galeri_foto[berkas]"
    end
  end
end
