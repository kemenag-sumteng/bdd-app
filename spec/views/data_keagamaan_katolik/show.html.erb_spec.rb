require 'rails_helper'

RSpec.describe "data_keagamaan_katolik/show", type: :view do
  before(:each) do
    @data_keagamaan_katolik = assign(:data_keagamaan_katolik, DataKeagamaanKatolik.create!(
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
