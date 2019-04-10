require 'rails_helper'

RSpec.describe "fungsis/show", type: :view do
  before(:each) do
    @fungsi = assign(:fungsi, Fungsi.create!(
      :nama => "Nama",
      :string => "String"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nama/)
    expect(rendered).to match(/String/)
  end
end
