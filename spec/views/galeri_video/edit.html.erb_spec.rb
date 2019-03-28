require 'rails_helper'

RSpec.describe "galeri_video/edit", type: :view do
  before(:each) do
    @galeri_video = assign(:galeri_video, GaleriVideo.create!(
      :judul => "MyString",
      :keterangan => "MyText",
      :berkas => "MyString"
    ))
  end

  it "renders the edit galeri_video form" do
    render

    assert_select "form[action=?][method=?]", galeri_video_path(@galeri_video), "post" do

      assert_select "input[name=?]", "galeri_video[judul]"

      assert_select "textarea[name=?]", "galeri_video[keterangan]"

      assert_select "input[name=?]", "galeri_video[berkas]"
    end
  end
end
