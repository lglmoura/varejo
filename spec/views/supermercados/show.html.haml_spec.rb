require 'rails_helper'

RSpec.describe "supermercados/show", :type => :view do
  before(:each) do
    @supermercado = assign(:supermercado, Supermercado.create!(
      :nome => "Nome",
      :endereco => "Endereco",
      :complemento => "Complemento",
      :bairro => "Bairro",
      :cidade => "Cidade",
      :estado => "Estado",
      :cep => "Cep",
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(/Complemento/)
    expect(rendered).to match(/Bairro/)
    expect(rendered).to match(/Cidade/)
    expect(rendered).to match(/Estado/)
    expect(rendered).to match(/Cep/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
  end
end
