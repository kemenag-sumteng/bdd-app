require 'rails_helper'

RSpec.describe "fungsis/new", type: :view do
  before(:each) do
    assign(:fungsi, Fungsi.new(
      :nama => "MyString",
      :string => "MyString"
    ))
  end

  it "renders new fungsi form" do
    render

    assert_select "form[action=?][method=?]", fungsis_path, "post" do

      assert_select "input[name=?]", "fungsi[nama]"

      assert_select "input[name=?]", "fungsi[string]"
    end
  end
end
