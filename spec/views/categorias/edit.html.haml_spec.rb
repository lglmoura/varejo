require 'rails_helper'

RSpec.describe "categorias/edit", :type => :view do
  before(:each) do
    @categoria = assign(:categoria, Categoria.create!(
      :descricao => "MyString",
      :setor => nil
    ))
  end

  it "renders the edit categoria form" do
    render

    assert_select "form[action=?][method=?]", categoria_path(@categoria), "post" do

      assert_select "input#categoria_descricao[name=?]", "categoria[descricao]"

      assert_select "input#categoria_setor_id[name=?]", "categoria[setor_id]"
    end
  end
end
