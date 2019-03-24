require 'rails_helper'

RSpec.describe "galeri_foto/show", type: :view do
  before(:each) do
    @galeri_foto = assign(:galeri_foto, GaleriFoto.create!(
      :judul => "Judul",
      :keterangan => "MyText",
      :berkas => "Berkas"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Judul/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Berkas/)
  end
end
