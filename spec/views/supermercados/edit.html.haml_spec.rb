require 'rails_helper'

RSpec.describe "supermercados/edit", :type => :view do
  before(:each) do
    @supermercado = assign(:supermercado, Supermercado.create!(
      :nome => "MyString",
      :endereco => "MyString",
      :complemento => "MyString",
      :bairro => "MyString",
      :cidade => "MyString",
      :estado => "MyString",
      :cep => "MyString",
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders the edit supermercado form" do
    render

    assert_select "form[action=?][method=?]", supermercado_path(@supermercado), "post" do

      assert_select "input#supermercado_nome[name=?]", "supermercado[nome]"

      assert_select "input#supermercado_endereco[name=?]", "supermercado[endereco]"

      assert_select "input#supermercado_complemento[name=?]", "supermercado[complemento]"

      assert_select "input#supermercado_bairro[name=?]", "supermercado[bairro]"

      assert_select "input#supermercado_cidade[name=?]", "supermercado[cidade]"

      assert_select "input#supermercado_estado[name=?]", "supermercado[estado]"

      assert_select "input#supermercado_cep[name=?]", "supermercado[cep]"

      assert_select "input#supermercado_latitude[name=?]", "supermercado[latitude]"

      assert_select "input#supermercado_longitude[name=?]", "supermercado[longitude]"
    end
  end
end
