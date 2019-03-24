require 'rails_helper'

RSpec.describe "galeri_foto/edit", type: :view do
  before(:each) do
    @galeri_foto = assign(:galeri_foto, GaleriFoto.create!(
      :judul => "MyString",
      :keterangan => "MyText",
      :berkas => "MyString"
    ))
  end

  it "renders the edit galeri_foto form" do
    render

    assert_select "form[action=?][method=?]", galeri_foto_path(@galeri_foto), "post" do

      assert_select "input[name=?]", "galeri_foto[judul]"

      assert_select "textarea[name=?]", "galeri_foto[keterangan]"

      assert_select "input[name=?]", "galeri_foto[berkas]"
    end
  end
end
