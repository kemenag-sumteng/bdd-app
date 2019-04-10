require 'rails_helper'

RSpec.describe "fungsi/edit", type: :view do
  before(:each) do
    @fungsi = assign(:fungsi, Fungsi.create!(
      :nama => "MyString"
    ))
  end

  it "renders the edit fungsi form" do
    render

    assert_select "form[action=?][method=?]", fungsi_path(@fungsi), "post" do

      assert_select "input[name=?]", "fungsi[nama]"
    end
  end
end
