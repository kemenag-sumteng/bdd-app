require 'rails_helper'

RSpec.describe "fungsis/edit", type: :view do
  before(:each) do
    @fungsi = assign(:fungsi, Fungsi.create!(
      :nama => "MyString",
      :string => "MyString"
    ))
  end

  it "renders the edit fungsi form" do
    render

    assert_select "form[action=?][method=?]", fungsi_path(@fungsi), "post" do

      assert_select "input[name=?]", "fungsi[nama]"

      assert_select "input[name=?]", "fungsi[string]"
    end
  end
end
