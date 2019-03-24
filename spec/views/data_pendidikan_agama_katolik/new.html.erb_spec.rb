require 'rails_helper'

RSpec.describe "data_pendidikan_agama_katolik/new", type: :view do
  before(:each) do
    assign(:data_pendidikan_agama_katolik, DataPendidikanAgamaKatolik.new(
      :judul => "MyString",
      :tautan => "MyText"
    ))
  end

  it "renders new data_pendidikan_agama_katolik form" do
    render

    assert_select "form[action=?][method=?]", data_pendidikan_agama_katolik_index_path, "post" do

      assert_select "input[name=?]", "data_pendidikan_agama_katolik[judul]"

      assert_select "textarea[name=?]", "data_pendidikan_agama_katolik[tautan]"
    end
  end
end
