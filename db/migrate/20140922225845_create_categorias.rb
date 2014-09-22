class CreateCategorias < ActiveRecord::Migration
  def change
    create_table :categorias do |t|
      t.string :descricao
      t.references :setor, index: true

      t.timestamps
    end
  end
end
