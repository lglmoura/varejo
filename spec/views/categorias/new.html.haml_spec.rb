require 'rails_helper'

RSpec.describe "categorias/new", :type => :view do
  before(:each) do
    assign(:categoria, Categoria.new(
      :descricao => "MyString",
      :setor => nil
    ))
  end

  it "renders new categoria form" do
    render

    assert_select "form[action=?][method=?]", categorias_path, "post" do

      assert_select "input#categoria_descricao[name=?]", "categoria[descricao]"

      assert_select "input#categoria_setor_id[name=?]", "categoria[setor_id]"
    end
  end
end
