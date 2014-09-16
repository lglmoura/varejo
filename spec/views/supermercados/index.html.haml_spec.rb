require 'rails_helper'

RSpec.describe "supermercados/index", :type => :view do
  before(:each) do
    assign(:supermercados, [
      Supermercado.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :complemento => "Complemento",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :estado => "Estado",
        :cep => "Cep",
        :latitude => 1.5,
        :longitude => 1.5
      ),
      Supermercado.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :complemento => "Complemento",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :estado => "Estado",
        :cep => "Cep",
        :latitude => 1.5,
        :longitude => 1.5
      )
    ])
  end

  it "renders a list of supermercados" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Complemento".to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
    assert_select "tr>td", :text => "Cep".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
