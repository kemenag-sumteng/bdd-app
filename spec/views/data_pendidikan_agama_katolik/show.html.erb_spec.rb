require 'rails_helper'

RSpec.describe "data_pendidikan_agama_katolik/show", type: :view do
  before(:each) do
    @data_pendidikan_agama_katolik = assign(:data_pendidikan_agama_katolik, DataPendidikanAgamaKatolik.create!(
      :judul => "Judul",
      :tautan => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Judul/)
    expect(rendered).to match(/MyText/)
  end
end
