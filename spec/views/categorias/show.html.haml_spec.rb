require 'rails_helper'

RSpec.describe "categorias/show", :type => :view do
  before(:each) do
    @categoria = assign(:categoria, Categoria.create!(
      :descricao => "Descricao",
      :setor => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Descricao/)
    expect(rendered).to match(//)
  end
end
