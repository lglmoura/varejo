require 'rails_helper'

RSpec.describe "categorias/index", :type => :view do
  before(:each) do
    assign(:categorias, [
      Categoria.create!(
        :descricao => "Descricao",
        :setor => nil
      ),
      Categoria.create!(
        :descricao => "Descricao",
        :setor => nil
      )
    ])
  end

  it "renders a list of categorias" do
    render
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
