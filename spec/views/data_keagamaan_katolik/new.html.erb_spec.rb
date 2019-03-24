require 'rails_helper'

RSpec.describe "data_keagamaan_katolik/new", type: :view do
  before(:each) do
    assign(:data_keagamaan_katolik, DataKeagamaanKatolik.new(
      :judul => "MyString",
      :tautan => "MyText"
    ))
  end

  it "renders new data_keagamaan_katolik form" do
    render

    assert_select "form[action=?][method=?]", data_keagamaan_katolik_index_path, "post" do

      assert_select "input[name=?]", "data_keagamaan_katolik[judul]"

      assert_select "textarea[name=?]", "data_keagamaan_katolik[tautan]"
    end
  end
end
