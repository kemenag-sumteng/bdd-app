require 'rails_helper'

RSpec.describe "fungsi/new", type: :view do
  before(:each) do
    assign(:fungsi, Fungsi.new(
      :nama => "MyString"
    ))
  end

  it "renders new fungsi form" do
    render

    assert_select "form[action=?][method=?]", fungsi_index_path, "post" do

      assert_select "input[name=?]", "fungsi[nama]"
    end
  end
end
