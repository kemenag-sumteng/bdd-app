require 'rails_helper'

RSpec.describe "galeri_video/index", type: :view do
  before(:each) do
    assign(:galeri_video, [
      GaleriVideo.create!(
        :judul => "Judul",
        :keterangan => "MyText",
        :berkas => "Berkas"
      ),
      GaleriVideo.create!(
        :judul => "Judul",
        :keterangan => "MyText",
        :berkas => "Berkas"
      )
    ])
  end

  it "renders a list of galeri_video" do
    render
    assert_select "tr>td", :text => "Judul".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Berkas".to_s, :count => 2
  end
end
