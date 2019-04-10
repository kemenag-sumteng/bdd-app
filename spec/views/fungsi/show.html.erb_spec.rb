require 'rails_helper'

RSpec.describe "fungsi/show", type: :view do
  before(:each) do
    @fungsi = assign(:fungsi, Fungsi.create!(
      :nama => "Nama"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nama/)
  end
end
