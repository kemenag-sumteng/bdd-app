require 'rails_helper'

RSpec.describe "informasi_berita_terkini/show", type: :view do
  before(:each) do
    @informasi_berita_terkini = assign(:informasi_berita_terkini, InformasiBeritaTerkini.create!(
      :judul => "Judul",
      :isi => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Judul/)
    expect(rendered).to match(/MyText/)
  end
end
