require 'rails_helper'

RSpec.describe "fabricantes/index", :type => :view do
  before(:each) do
    assign(:fabricantes, [
      Fabricante.create!(
        :nome => "Nome"
      ),
      Fabricante.create!(
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of fabricantes" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
