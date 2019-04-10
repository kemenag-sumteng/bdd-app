require 'rails_helper'

RSpec.describe "fungsis/index", type: :view do
  before(:each) do
    assign(:fungsis, [
      Fungsi.create!(
        :nama => "Nama",
        :string => "String"
      ),
      Fungsi.create!(
        :nama => "Nama",
        :string => "String"
      )
    ])
  end

  it "renders a list of fungsis" do
    render
    assert_select "tr>td", :text => "Nama".to_s, :count => 2
    assert_select "tr>td", :text => "String".to_s, :count => 2
  end
end
