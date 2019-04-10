require 'rails_helper'

RSpec.describe "fungsi/index", type: :view do
  before(:each) do
    assign(:fungsi, [
      Fungsi.create!(
        :nama => "Nama"
      ),
      Fungsi.create!(
        :nama => "Nama"
      )
    ])
  end

  it "renders a list of fungsi" do
    render
    assert_select "tr>td", :text => "Nama".to_s, :count => 2
  end
end
