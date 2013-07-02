class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome
      t.integer :tipo
      t.decimal :preco

      t.timestamps
    end
  end
end
