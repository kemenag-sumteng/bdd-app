require 'rails_helper'

RSpec.describe "informasi_pengumuman/index", type: :view do
  before(:each) do
    assign(:informasi_pengumuman, [
      InformasiPengumuman.create!(
        :judul => "Judul",
        :isi => "MyText"
      ),
      InformasiPengumuman.create!(
        :judul => "Judul",
        :isi => "MyText"
      )
    ])
  end

  it "renders a list of informasi_pengumuman" do
    render
    assert_select "tr>td", :text => "Judul".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
