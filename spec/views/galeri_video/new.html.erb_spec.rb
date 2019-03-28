require 'rails_helper'

RSpec.describe "galeri_video/new", type: :view do
  before(:each) do
    assign(:galeri_video, GaleriVideo.new(
      :judul => "MyString",
      :keterangan => "MyText",
      :berkas => "MyString"
    ))
  end

  it "renders new galeri_video form" do
    render

    assert_select "form[action=?][method=?]", galeri_video_index_path, "post" do

      assert_select "input[name=?]", "galeri_video[judul]"

      assert_select "textarea[name=?]", "galeri_video[keterangan]"

      assert_select "input[name=?]", "galeri_video[berkas]"
    end
  end
end
