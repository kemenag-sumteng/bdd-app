require 'rails_helper'

RSpec.describe "data_pendidikan_agama_katolik/index", type: :view do
  before(:each) do
    assign(:data_pendidikan_agama_katolik, [
      DataPendidikanAgamaKatolik.create!(
        :judul => "Judul",
        :tautan => "MyText"
      ),
      DataPendidikanAgamaKatolik.create!(
        :judul => "Judul",
        :tautan => "MyText"
      )
    ])
  end

  it "renders a list of data_pendidikan_agama_katolik" do
    render
    assert_select "tr>td", :text => "Judul".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
