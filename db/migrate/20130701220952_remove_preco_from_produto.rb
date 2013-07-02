class RemovePrecoFromProduto < ActiveRecord::Migration
  def up
    remove_column :produtos, :preco
  end

  def down
    add_column :produtos, :preco, :string
  end
end
