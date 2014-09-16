class CreateSupermercados < ActiveRecord::Migration
  def change
    create_table :supermercados do |t|
      t.string :nome
      t.string :endereco
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
