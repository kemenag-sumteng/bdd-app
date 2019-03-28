require 'rails_helper'

RSpec.describe "informasi_pengumuman/show", type: :view do
  before(:each) do
    @informasi_pengumuman = assign(:informasi_pengumuman, InformasiPengumuman.create!(
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
